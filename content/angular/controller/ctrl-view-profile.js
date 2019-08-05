app.controller('ctrlProfile', ['$scope', 'Dataservice', function ($scope, Dataservice) {
  $scope.dataExist = true;
  $scope.dataExistEsp = true;
  $scope.dataExistEspecial = true;
  $scope.dataExistGruposdeE = true;
  $scope.dataExistCertification = true;
  $scope.dataExistVerification = true;
  $scope.dataExistAdicional = true;
  $scope.privateNumberActive = true;
  $scope.idNanny = Dataservice.GetFilter();
  $scope.disponibilidadAccess = []
  var id = $scope.idNanny.nanny;
  $scope.existsNanny = true;
  $scope.sessionExist = JSON.parse(ExistSession);
  // console.log($scope.sessionExist)
  if ($scope.sessionExist != null) {
    if ($scope.sessionExist[0].id == id) {
      $scope.existsNanny = false;
    }
  } else {
    $scope.existsNanny = true;
  }
  /*###################################################### */
  //             ACCESS O THIS PAGE  
  /*###################################################### */
  function loadViewDataNanny() {
    Dataservice.getData(id).then(function (data) {
      $scope.infoNanny = data.data.result.Database[0].Table.Row[0][0];
      $scope.Zonas=$scope.infoNanny.zona.split(', ').join(',').split(',').join(', ');
    if ( $scope.infoNanny.privateNumber != "of" ){
      $scope.privateNumberActive = true;
    }else{
      $scope.privateNumberActive = false;
    }
      // servicios especiales 
      var objservicesE = $scope.infoNanny.serviciosEspeciales;
      $scope.servicesE = objservicesE.split(",", 6);
      if ($scope.servicesE.length == 0 || $scope.servicesE == "") {
        $scope.dataExistEspecial = true;
      } else {
        $scope.dataExistEspecial = false;
      }
      // servicios
      objservices = $scope.infoNanny.servicios;
      $scope.services = objservices.split(",", 6);
      if ($scope.services.length == 0 || $scope.services == "") {
        $scope.dataExistGruposdeE = true;
      } else {
        $scope.dataExistGruposdeE = false;
      }
      // otros servicios 
      var objothersServices = $scope.infoNanny.othersInformacionAdicional;
      $scope.othersServicesA = objothersServices.split(",", 6);
      if ($scope.othersServicesA.length == 0 || $scope.othersServicesA == "") {
        $scope.dataExist = true;
      } else {
        $scope.dataExist = false;
      }
      // otros servicios especiales 
      var objothersServicesEspe = $scope.infoNanny.othersServiceEspeciales;
      $scope.othersServicesEsp = objothersServicesEspe.split(",", 6);
      if ($scope.othersServicesEsp.length == 0 || $scope.othersServicesEsp == "") {
        $scope.dataExistEsp = true;
      } else {
        $scope.dataExistEsp = false;
      }
      // certificacion 
      var objcertificacion = $scope.infoNanny.certificacion;
      $scope.certificacion = objcertificacion.split(",", 6);
      if ($scope.certificacion.length == 0 || $scope.certificacion == "") {
        $scope.dataExistCertification = true;
      } else {
        $scope.dataExistCertification = false;
      }
      // certificacion 
      objverificacion = $scope.infoNanny.verificacion;
      $scope.verificacion = objverificacion.split(",", 6);
      if ($scope.verificacion.length == 0 || $scope.verificacion == "") {
        $scope.dataExistVerification = true;
      } else {
        $scope.dataExistVerification = false;
      }
      // servicios adicionales 
      var objservicesA = $scope.infoNanny.serviciosAdicionales;
      $scope.servicesA = objservicesA.split(",", 6);
      if ($scope.servicesA.length == 0 || $scope.servicesA == "") {
        $scope.dataExistAdicional = true;
      } else {
        $scope.dataExistAdicional = false;
      }
    })
  }
  function LoadDispoibilidad() {
    // console.log(dataservice)
    Dataservice.getDisponibilidadNanny(id).then(function (data) {
      $scope.disponibilidad = data.data.result.Database[0].Table.Row[0];
      // console.log($scope.disponibilidad)
      for (const key in $scope.disponibilidad) {
        if ($scope.disponibilidad[key].horaInicio != "" && $scope.disponibilidad[key].horaFinal != "" && $scope.disponibilidad[key].horaInicio != '00:00:00' && $scope.disponibilidad[key].horaFinal != '00:00:00') {
          document.getElementById("disponibilidad").innerHTML += `
        <tr>
        <th>${$scope.disponibilidad[key].dia}</th>
        <td>${$scope.disponibilidad[key].horaInicio}</td>
        <td>${$scope.disponibilidad[key].horaFinal}</td>
         </tr>
        `;
        }
      }
    })
  }
  loadViewDataNanny();
  LoadDispoibilidad()
}])