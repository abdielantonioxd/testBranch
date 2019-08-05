app.controller('ctrl-session-start', ['$scope', 'Dataservice', function ($scope, Dataservice) {
  $scope.UserActiveNanny = UserNanny;
  /*###################################################### */
  //            VALIDATE DATA OF FORM LOGIN
  /*###################################################### */
  $scope.validateDataUsers = function () {
  var response = grecaptcha.getResponse();
  if(response.length == 0){
    alertify.set('notifier', 'position', 'top-right');
    alertify.error('Ocurrió un error,comprueba que no eres un robot!');
  } else {
       form = $("#formRegister").serializeArray();
    form.push({
      name: 'Option',
      value: 'Validate'
    })
    form.push({
      name: 'miembro',
      value: ''
    });
    obj = new Object();
    for (const i in form) {
      obj[form[i].name] = form[i].value;
    }
    if (obj.email && obj.password != "") {
      $scope.emailCreateAccount = obj.email;
      sendDataOfUsers(obj)
    } else {
      alertify.set('notifier', 'position', 'top-right');
      alertify.error('Ocurrió un error, vuelva a intentarlo !');
    }
  }
 
  }

  /*###################################################### */
  //            VALIDATE DATA OF FORM LOGIN
  /*###################################################### */

  function sendDataOfUsers(obj) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosUsers,
      timeout: 2000,
      data: obj,
      success: function (data) {
        $scope.datosUser = data.result.Database[0].Table.Row[0]
        if ($scope.datosUser.length == 0 ) {
          alertify.set('notifier', 'position', 'top-right');
          alertify.error('La contraseña y el correo no coinciden');
        } else {
           userActiveNanny.push({
          id: $scope.datosUser[0].id,
          email: $scope.datosUser[0].email
        });
        if (opInit.length === 0) {
          opInit.push({
            id: $scope.datosUser[0].id,
            email: $scope.datosUser[0].email
          })
          localStorage.setItem('datos', JSON.stringify(opInit));
          $scope.linkCreateProfile = opInit[0].id
        }
        localStorage.setItem('sessionNanny', JSON.stringify(userActiveNanny));
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Se  incio session con  <b>correo : </b>' + `<b>${$scope.emailCreateAccount}</b>`);
        location.href = `/crear-perfil-nanny?nanny=${$scope.datosUser[0].id}`;
        // $("#formRegister")[0].reset();
        }
       
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }

}])