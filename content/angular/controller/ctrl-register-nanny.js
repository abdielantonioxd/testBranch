app.controller('ctrl-register-nanny', ['$scope', 'Dataservice', function ($scope, Dataservice) {
  /*###################################################### */
  // VALIDATE DATA OF FORM REGISTER  " Nanny & padres " 
  /*###################################################### */

  $scope.validatePassword = function (){
   
  }
  $scope.validateDataForm = function (op) {
    var response = grecaptcha.getResponse();
    if (response.length == 0) {
      alertify.set('notifier', 'position', 'top-right');
      alertify.error('Ocurrio un error,comprueba que no eres un robot!');
    } else {
      pushData(op)
    }
  }

  function pushData(op) {
    if (op != 'Nanny') {
      form = $("#InicioSession").serializeArray();
      form.push({
        name: 'Option',
        value: 'Create',
        name: 'telefono',
        value: ''
      });
      var hoy = new Date();
      var dd = hoy.getDate();
      var mm = hoy.getMonth() + 1;
      var yyyy = hoy.getFullYear();
      var miembro = dd + '/' + mm + '/' + yyyy;
      form.push({
        name: 'miembro',
        value: miembro
      });
      forIn(form)
    } else {
      form = $("#formRegister").serializeArray();
      var hoy = new Date();
      var dd = hoy.getDate();
      var mm = hoy.getMonth() + 1;
      var yyyy = hoy.getFullYear();
      var miembro = dd + '/' + mm + '/' + yyyy;
      form.push({
        name: 'Option',
        value: 'Create'
      });
      form.push({
        name: 'hashRpasword',
        value: ''
      });
      form.push({
        name: 'miembro',
        value: miembro
      });
      forIn(form)
    }
  }

  function forIn(form) {
    obj = new Object();
    for (const i in form) {
      obj[form[i].name] = form[i].value;
    }
    validateInputForm(obj)
  }

  function validateInputForm(obj) {
    if (obj.email && obj.password != "" && obj.terminos == "on") {
      $scope.emailCreateAccount = obj.email;
      if (obj.MethodRegister != 'Nanny') {
        sendDataOfFathers(obj)
      } else {
        sendDataOfUsers(obj);
      }
    } else {
      alertify.set('notifier', 'position', 'top-right');
      alertify.error('ocurrio un error,Todos los campos son obligatorios  !');
    }
  }

  /*###################################################### */
  //            VALIDATE DATA OF FORM REGISTER
  /*###################################################### */

  function sendDataOfUsers(obj) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosUsers,
      timeout: 2000,
      data: obj,
      success: function (data) {
        $scope.datosUser = data.result.Database[0].Table.Row[0]
        if ($scope.datosUser.length == 0) {
          alertify.set('notifier', 'position', 'top-right');
          alertify.error('Ocurrió un error,el correo ya esta en uso. ');
        }
        var objId = {
          id: $scope.datosUser[0].id
        }
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
        reserveSpaceIndDB(objId)
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }

  function reserveSpaceIndDB(objId) {
    $.ajax({
      type: "POST",
      url: UrlSendReservation,
      timeout: 2000,
      data: objId,
      success: function (data) {
        $scope.datosUser = data.result.Database[0].Table.Row[0]
        localStorage.setItem('sessionNanny', JSON.stringify(userActiveNanny));
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Bienvenido a nanny 365   <b>correo : </b>' + `<b>${$scope.emailCreateAccount}</b> `);
        setTimeout(() => {
          location.href = `/crear-perfil-nanny?nanny=${$scope.datosUser[0].nannyID}`;
        }, 1000);
        $("#formRegister")[0].reset();
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }
  /*##############################################################*/
  //                      SESSION FATHERS
  /*##############################################################*/

  function sendDataOfFathers(obj) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosFathers,
      timeout: 2000,
      data: obj,
      success: function (data) {
        $scope.datosUser = data.result.Database[0].Table.Row[0]
        userActiveFather.push({
          id: $scope.datosUser[0].id,
          email: $scope.datosUser[0].email
        })
        localStorage.setItem('sessionFather', JSON.stringify(userActiveFather));
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Se  ha registrado con exito   <b>correo : </b>' + `<b>${$scope.emailCreateAccount}</b> `);
        setTimeout(() => {
          $('#InicioSesion').modal('show');
        }, 2000);
        $("#InicioSession")[0].reset();
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }

}])