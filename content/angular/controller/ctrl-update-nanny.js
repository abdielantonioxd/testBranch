app.controller('ctrl-update', ['$scope', 'Dataservice', function ($scope, Dataservice) {
  $scope.id = Dataservice.GetFilter();
  console.log($scope.id.nanny)
  function ShowDataNanny() {
    Dataservice.getData($scope.id.nanny).then(function (response) {
      var dataPersonal = response.data.result.Database[0].Table.Row[0][0]
      $scope.images = dataPersonal.imagesP;
      $scope.imagesID = dataPersonal.imagesID;
      setdataPersonnal(dataPersonal);
      setdataAdicional(dataPersonal);
      setImagenPrincipal(dataPersonal)
    })
  }
  function setdataPersonnal(dataPersonal) {
    document.getElementById('nombre').value = dataPersonal.nombre;
    document.getElementById('telefono').value = dataPersonal.telefono;
    document.getElementById('fechaNacimiento').defaultValue = dataPersonal.fechaNacimiento;
    document.getElementById('provincia').value = dataPersonal.provincia;
    document.getElementById('distrito').value = dataPersonal.distrito;
    document.getElementById('ID').value = dataPersonal.numeroID;
    document.getElementById('imagenID').value = dataPersonal.imagesID;
    if (dataPersonal.privateNumber == 'on') {
      var checkPrivate = document.getElementById('privateNumber')
      checkPrivate.setAttribute('checked', 'checked');
    }
  }

  function setdataAdicional(dataPersonal) {
    document.getElementById('experiencia').value = dataPersonal.experiencia;
    document.getElementById('servicios').value = dataPersonal.servicios;
    document.getElementById('servEspecial').value = dataPersonal.serviciosEspeciales;
    document.getElementById('servAdicional').value = dataPersonal.serviciosAdicionales;
    document.getElementById('certificacion').value = dataPersonal.distrito;
    document.getElementById('verificacion').value = dataPersonal.verificacion;
    document.getElementById('tarifa').value = dataPersonal.tarifa;
    document.getElementById('zonas').value = dataPersonal.zona;
    document.getElementById('sobreMi').value = dataPersonal.sobreMi;
  }

  function setImagenPrincipal(dataPersonal) {
    document.getElementById('imagen').value = dataPersonal.imagesP;
  }


  /*=================================================== */
  //                UPDATE dATA PERSONAL 
  /*=================================================== */
  $scope.updateDataPersonal = function () {
    var data = {
      nombre: document.getElementById('nombre').value,
      fechaN: document.getElementById('fechaNacimiento').value,
      provincia: document.getElementById('provincia').value,
      distrito: document.getElementById('distrito').value,
      identificacion: document.getElementById('ID').value,
      id: $scope.id.nanny,
      telefono: document.getElementById('telefono').value,
      privateNumber: document.getElementById('privateNumber').value,
      imagesID: document.getElementById('imagenID').value,
    }
    sendDataPersonalDB(data)
  }

  function sendDataPersonalDB(data) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosPersonal,
      timeout: 2000,
      data: data,
      success: function (data) {
        console.log(data)
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Sus datos personales fueron guardados correctamente');
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }

  /*=================================================== */
  //                UPDATE dATA ADICIONAL 
  /*=================================================== */

  $scope.updateAdicionalData = function () {
    var data = {
      experiencia: document.getElementById('experiencia').value,
      servicios: document.getElementById('servicios').value,
      serviciosEspeciales: document.getElementById('servEspecial').value,
      serviciosAdicionales: document.getElementById('servAdicional').value,
      certificacion: document.getElementById('certificacion').value,
      verification: document.getElementById('verificacion').value,
      tarifa: document.getElementById('tarifa').value,
      zona: document.getElementById('zonas').value,
      sobreMi: document.getElementById('sobreMi').value,
      id: $scope.id.nanny
    }
    sendDataGeneral(data)
  }

  function sendDataGeneral(data) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosGenral,
      timeout: 2000,
      data: data,
      success: function (data) {
        console.log(data)
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('datos  Generales fueron  guardados correctamente');
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }


  $scope.saveImagesP = function () {
    $scope.imagesP = imagesP;
    var obj = {
      imagesP: $scope.imagesP[0].name,
      id: $scope.id.nanny
    }
    $.ajax({
      type: "POST",
      url: UrlSendImages,
      timeout: 2000,
      data: obj,
      success: function (data) {
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Imagen Guardada correctamente');
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }
  ShowDataNanny()
}])