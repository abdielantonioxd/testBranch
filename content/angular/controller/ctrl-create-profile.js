app.controller('ctrl-create-profile', ['$scope', 'Dataservice', function ($scope, Dataservice) {
  $scope.serviceOthers = [];
  var serviceOthers = [];
  $scope.serviceAdicionalOthers = [];
  var serviceAdicional = [];
  $scope.delete = [];
  $scope.deleteES = [];
  $scope.deleteAd = [];
  $scope.deleteCe = [];
  $scope.deleteVe = [];
  $scope.deleteZo = [];
  $scope.serviceEspe = [];
  $scope.service = [];
  $scope.serviceAditional = [];
  $scope.certification = [];
  $scope.verification = "";
  $scope.zonas = [];
  $scope.expe = "";
  $scope.NExpe = "";
  $scope.tarifa = 0;
  $scope.sobreMi = "";
  $scope.imagesID = true;
  $scope.privateOn = true;
  $scope.privateOf = false;
  $scope.otherServicesEspecial = true;
  $scope.otherServicesAdicional = true;
  $scope.identificationInput = true;
  $scope.validID = false;
  $scope.cedula = "";
  $scope.limit = 4;
  $scope.experience = Check_Experience;
  $scope.services = Check_Services;
  $scope.serviceEspecial = Check_ServicesEspecial
  $scope.serviceEspecialTwo = Check_ServicesEspecialTwo;
  $scope.certificacion = ckeck_certificacionesOne;
  $scope.certificaionTwo = ckeck_certificacionesTwo;
  $scope.Zonas = SearchZonas;
  $scope.Serv = servicesObj;
  $scope.sessionExist = JSON.parse(ExistSession);
  $scope.fechaNacimiento = "2019-01-01";
  /*###################################################### */
  //             ACCESS O THIS PAGE  
  /*###################################################### */
  $scope.imagesPlaceholder = false;
  $scope.PassworID = false;
  $scope.userExist = UserNanny;
  $scope.usersExistFacebook = UserFacebook;
  $scope.userExistGoogle = UserGoogle;
  $scope.userExistFather = UserFather;
$scope.enter=function ($event){
  console.log($event)
}
  /*###################################################### */
  //     VALIDACIÓN DE DATOS PERSONALES Y IMAGENES 
  /*###################################################### */
  $scope.identID = function () {
    $scope.identificationInput = false;
    $scope.c = $('#cedula').prop('checked');
    $scope.p = $('#Pasaporte').prop('checked');
  }

  $scope.validateDataPersonal = function () {
    var privateNumber = $('#privateNumber').prop('checked');
    // var identification = document.getElementById('identificacion').value;
    form = $("#formDataPersonal").serializeArray();
    if ($scope.validID != false) {
      $scope.imagesID = imagesID;
      if ($scope.imagesID.length != 0) {
        form.push({
          name: 'imagesID',
          value: $scope.imagesID[0].name
        });
      } else {
        if ($scope.Images != " ") {
          form.push({
            name: 'imagesID',
            value: $scope.Images
          });
        } else {
          form.push({
            name: 'imagesID',
            value: 'peril.png'
          });
        }
      }
      if (privateNumber == true) {
        form.push({
          name: 'privateNumber',
          value: 'on'
        });
      } else {
        form.push({
          name: 'privateNumber',
          value: 'of'
        });
      }
      form.push({
        name: 'id',
        value: $scope.sessionExist[0].id,
      });
      form.push({
        name: 'distrito',
        value: '',
      });
      obj = new Object();
      for (const i in form) {
        obj[form[i].name] = form[i].value;
      }
      if (obj.nombre != "") {
        console.log(obj)
        $scope.saveImagesP()
        sendDataPersonalDB(obj);
      } else {
        alertify.set('notifier', 'position', 'top-right');
        alertify.error('ocurrio un error,Todos los campos son obligatorios !');
      }
    } else {
      alertify.set('notifier', 'position', 'top-right');
      alertify.error('ocurrio un error! El formato de cédula no es válido');
    }

  }

  /*###################################################### */
  //                   SEND DATA PERSONAL 
  /*###################################################### */
  function sendDataPersonalDB(obj) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosPersonal,
      timeout: 2000,
      data: obj,
      success: function (data) {
          getData();
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Sus datos personales fueron guardados correctamente');
      },
      error: function (textStatus, err) {
        // console.log( err);
        if(textStatus.status == 500){
          alertify.set('notifier', 'position', 'top-right');
          alertify.error('Ocurrió un error, No se pueden guardar los datos el  número de identificación ya esta en uso');
      }
    }
    });
  }
  /*###################################################### */
  //                 SEND IMAGES PRINCIPAL 
  /*###################################################### */
  $scope.saveImagesP = function () {
    $scope.imagesP = imagesP;
    if ($scope.imagesP.length != 0) {
      var obj = {
        imagesP: $scope.imagesP[0].name,
        id: $scope.sessionExist[0].id,
      }
    } else {
      if ($scope.ImagesPrincipal != "") {
        var obj = {
          imagesP: $scope.ImagesPrincipal,
          id: $scope.sessionExist[0].id,
        }
      } else {
        var obj = {
          imagesP: 'perfil.png',
          id: $scope.sessionExist[0].id,
        }
      }
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

  /*###################################################### */
  //                GET DATA ADITIONAL  
  /*###################################################### */
  // check experiencia 
  $scope.getExperience = function (e) {
    experiencia = e.name;
    $scope.expe = experiencia;
    if (experiencia == 'Sin Experiencia') {
      $scope.NExpe = 0;
    } else {
      var separador = $scope.expe.split(" ", 5);
      $scope.NExpe = separador[0];
    }
  }

  /* =================================== 
       GET AND UPDATE GROUP YEARS OLD
     =================================== */
  $scope.getServices = function (s) {
    services = s.name;
    if ($scope.service[0] == "") {
      $scope.service.splice(0, 1);
      addServNanny();
    } else {
      addServNanny();
    }
    function addServNanny() {
      if ($scope.service.length == 0) {
        $scope.service.push(services)
      } else {
        $.each($scope.service, function (s, v) {
          if (v == services) {

            $scope.service.splice(s, 1);
            $scope.delete.push($scope.service.splice(s, 1));
            // console.log($scope.delete)
          } else {
            $scope.service.push(services)
          }
        })
        var NgroupYearsOld = $scope.service.filter(function (item, index, array) {
          return array.indexOf(item) === index;
        })
        for (const key in NgroupYearsOld) {
          for (const key2 in $scope.delete) {
            if (NgroupYearsOld[key] == $scope.delete[key2]) {
              NgroupYearsOld.splice(key, 1);
            }
          }
        }
        if (NgroupYearsOld.length == 0) {
          $scope.service = "";
        } else {
          $scope.service = NgroupYearsOld
        }
      }
    }
    // console.log($scope.service)
  }
  /* =================================== 
      GET AND UPDATE SERVICES ESPECIALES
     =================================== */
  $scope.getServiceEsp = function (se) {
    servicesEsp = se.name;
    // console.log(se)
    if (se.id == "others") {
      if ($scope.serviceOthers[0] == "") {
        $scope.serviceOthers.splice(0, 1);
        $scope.otherServicesEspecial = false;
      } else {
        $scope.otherServicesEspecial = false;
      }
    } else {
      if ($scope.serviceEspe[0] == "") {
        $scope.serviceEspe.splice(0, 1);
        addServEspecial();
      } else {
        addServEspecial();
      }
    }


    function addServEspecial() {
      if ($scope.serviceEspe.length == 0 || $scope.serviceEspe == "") {
        $scope.serviceEspe.push(servicesEsp)
      } else {
        $.each($scope.serviceEspe, function (i, v) {
          if (v == servicesEsp) {
            $scope.serviceEspe.splice(i, 1);
            $scope.deleteES.push($scope.serviceEspe.splice(i, 1));
          } else {
            $scope.serviceEspe.push(servicesEsp)
          }
        })

        var NserviceEspeciales = $scope.serviceEspe.filter(function (item, index, array) {
          return array.indexOf(item) === index;
        })

        for (const keyes in NserviceEspeciales) {
          for (const keyes2 in $scope.deleteES) {
            if (NserviceEspeciales[keyes] == $scope.deleteES[keyes2]) {
              NserviceEspeciales.splice(keyes, 1);
            }
          }
        }

        if (NserviceEspeciales.length == 0) {
          $scope.serviceEspe = "";
        } else {
          $scope.serviceEspe = NserviceEspeciales
        }
      }
    }
    // console.log($scope.serviceEspe)
  }

  /* =================================== 
     OTHERS SERVICES  ESPECIALES 
   =================================== */
  $scope.addOthersServiceEspeciales = function () {
    var others = document.getElementById('othersService').value;
    if ($scope.serviceOthers[0] == "") {
      $scope.serviceOthers.splice(0, 1);
      serviceOthers.push(others);
      $scope.serviceOthers = serviceOthers;
    } else {
      serviceOthers.push(others);
      $scope.serviceOthers = serviceOthers;
      document.getElementById('othersService').value = "";
    }
    // console.log($scope.serviceOthers)
  }

  $scope.deleteOthersServiceEspe = function (del) {
    $.each($scope.serviceOthers, function (s, v) {
      if (v == del) {
        $scope.serviceOthers.splice(s, 1);
        // console.log("Eliminado :" + $scope.serviceOthers)
      } else {
        // console.log($scope.serviceOthers)
      }
    })
  }

  /* =================================== 
     GET AND UPDATE SERVICES ADICIONAL
     =================================== */
  $scope.getServiceaditional = function (serv) {
    servicesaditional = serv.name;
    if (serv.id == "otherstwo") {
      if ($scope.serviceAdicionalOthers[0] == "") {
        $scope.serviceAdicionalOthers.splice(0, 1);
        $scope.otherServicesAdicional = false;
      } else {
        $scope.otherServicesAdicional = false;
      }
    } else {
      if ($scope.serviceAditional[0] == "") {
        $scope.serviceAditional.splice(0, 1);
        addServAdicional();
      } else {
        addServAdicional();
      }
    }

    function addServAdicional() {
      if ($scope.serviceAditional.length == 0) {
        $scope.serviceAditional.push(servicesaditional)
      } else {
        $.each($scope.serviceAditional, function (s, v) {
          if (v == servicesaditional) {
            $scope.serviceAditional.splice(s, 1);
            $scope.deleteAd.push($scope.serviceAditional.splice(s, 1));
          } else {
            $scope.serviceAditional.push(servicesaditional)
          }
        })

        var NserviceAdi = $scope.serviceAditional.filter(function (item, index, array) {
          return array.indexOf(item) === index;
        })

        for (const key in NserviceAdi) {
          for (const key2 in $scope.deleteAd) {
            if (NserviceAdi[key] == $scope.deleteAd[key2]) {
              NserviceAdi.splice(key, 1);
            }
          }
        }

        if (NserviceAdi.length == 0) {
          $scope.serviceAditional = "";
        } else {
          $scope.serviceAditional = NserviceAdi
        }
      }
    }
    // console.log($scope.serviceAditional)
  }
  /* =================================== 
         OTHERS SERVICES ADICIONALES
     =================================== */
  $scope.addOthersServiceAdicionales = function () {
    var othersAdi = document.getElementById('othersServiceAdicional').value;
    if ($scope.serviceAdicionalOthers[0] == "") {
      $scope.serviceAdicionalOthers.splice(0, 1);
      serviceAdicional.push(othersAdi)
      $scope.serviceAdicionalOthers = serviceAdicional;
    } else {
      serviceAdicional.push(othersAdi)
      $scope.serviceAdicionalOthers = serviceAdicional;
      document.getElementById('othersServiceAdicional').value = "";
    }
  }

  $scope.deleteOthersServiceAdi = function (del) {
    $.each($scope.serviceAdicionalOthers, function (s, v) {
      if (v == del) {
        $scope.serviceAdicionalOthers.splice(s, 1);
        // console.log("Eliminado :" + $scope.serviceAdicionalOthers)
      } else {
        // console.log($scope.serviceAdicionalOthers)
      }
    })
  }
  /* =================================== 
        GET AND UPDATE CERTIFICATION
     =================================== */
  $scope.getCertification = function (ce) {
    certifications = ce.name;
    if ($scope.certification[0] == "") {
      $scope.certification.splice(0, 1);
      addCertificacion();
    } else {
      addCertificacion();
    }

    function addCertificacion() {
      if ($scope.certification.length == 0) {
        $scope.certification.push(certifications)
      } else {
        $.each($scope.certification, function (s, v) {
          if (v == certifications) {
            $scope.certification.splice(s, 1);
            $scope.deleteCe.push($scope.certification.splice(s, 1));
          } else {
            $scope.certification.push(certifications)
          }
        })

        var Ncertification = $scope.certification.filter(function (item, index, array) {
          return array.indexOf(item) === index;
        })

        for (const key in Ncertification) {
          for (const key2 in $scope.deleteCe) {
            if (Ncertification[key] == $scope.deleteCe[key2]) {
              Ncertification.splice(key, 1);
            }
          }
        }

        if (Ncertification.length == 0) {
          $scope.certification = "";
        } else {
          $scope.certification = Ncertification
        }
      }
    }
    // console.log($scope.certification)
  }

  /* =================================== 
         GET AND UPDATE VERIFICATION
      =================================== */
  $scope.getverification = function (ce2) {
    verifi = ce2.name;
    if ($scope.verification[0] == "") {
      $scope.verification.splice(0, 1);
      addVerificacion();
    } else {
      addVerificacion();
    }
    function addVerificacion() {
      if ($scope.verification.length == 0) {
        $scope.verification.push(verifi)
      } else {
        $.each($scope.verification, function (s, v) {
          if (v == verifi) {
            $scope.verification.splice(s, 1);
            $scope.deleteVe.push($scope.verification.splice(s, 1));
          } else {
            $scope.verification.push(verifi)
          }
        })

        var Nverification = $scope.verification.filter(function (item, index, array) {
          return array.indexOf(item) === index;
        })

        for (const key in Nverification) {
          for (const key2 in $scope.deleteVe) {
            if (Nverification[key] == $scope.deleteVe[key2]) {
              Nverification.splice(key, 1);
            }
          }
        }

        if (Nverification.length == 0) {
          $scope.verification = "";
        } else {
          $scope.verification = Nverification
        }
      }
    }
    // console.log($scope.verification)
  }

  /* =================================== 
         GET AND UPDATE ZONAS
    =================================== */
  $scope.getZonas = function (obj) {
    var desplazamiento = obj.name;
    if ($scope.zonas[0] == "") {
      $scope.zonas.splice(0, 1);
      addZonasDesplazamiento();
    } else {
      addZonasDesplazamiento();
    }
    function addZonasDesplazamiento() {
      if ($scope.zonas.length == 0) {
        $scope.zonas.push(desplazamiento)
      } else {
        $.each($scope.zonas, function (s, v) {
          if (v == desplazamiento) {
            $scope.zonas.splice(s, 1);
            $scope.deleteZo.push($scope.zonas.splice(s, 1));
          } else {
            $scope.zonas.push(desplazamiento)
          }
        })
        var Nzonas = $scope.zonas.filter(function (item, index, array) {
          return array.indexOf(item) === index;
        })

        for (const key in Nzonas) {
          for (const key2 in $scope.deleteZo) {
            if (Nzonas[key] == $scope.deleteZo[key2]) {
              Nzonas.splice(key, 1);
            }
          }
        }
        if (Nzonas.length == 0) {
          $scope.zonas = "";
        } else {
          $scope.zonas = Nzonas;
        }
      }
    }
    // console.log($scope.zonas)
  }


  /* =================================== 
         SEND DATA ADICIONAL
     =================================== */
  $scope.sendDataAditionalDB = function () {
    if ($scope.serviceOthers.length == 0) {
      $scope.serviceOthers = "";
    }
    if ($scope.serviceAdicionalOthers.length == 0) {
      $scope.serviceAdicionalOthers = ""
    }
    var obj = {
      numExperiencia: $scope.NExpe,
      experiencia: $scope.expe,
      servicios: $scope.service,
      serviciosEspeciales: $scope.serviceEspe,
      serviciosAdicionales: $scope.serviceAditional,
      certificacion: $scope.certification,
      verification: "",
      tarifa: document.getElementById('tarifa').value,
      zona: $scope.zonas,
      sobreMi: document.getElementById('sobreMi').value,
      id: $scope.sessionExist[0].id,
      othersServiceEspe: $scope.serviceOthers,
      othersServiceAdi: $scope.serviceAdicionalOthers,
    }
    // console.log(obj)
    sendDataGeneral(obj)
  }
  /* =================================== 
         GET DATA DISPONIBILIDAD
     =================================== */
  $scope.sendDataDisponibilidad = function () {
    form = $("#Disponibilidad").serializeArray();
    form.push({
      name: 'id',
      value: $scope.sessionExist[0].id
    });
    obj = new Object();
    for (const i in form) {
      obj[form[i].name] = form[i].value;
    }
    // console.log(obj)
    sendDisponibilidad(obj)
  }
  /* =================================== 
         SEND DATA DISPONIBILIDAD
     =================================== */
  function sendDisponibilidad(obj) {
    $.ajax({
      type: "POST",
      url: UrlSendDisponibilidad,
      timeout: 2000,
      data: obj,
      success: function (data) {
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Su disponibilidad  fue   guardada correctamente');
        var id = $scope.sessionExist[0].id;
        getDisponibilidad(id)

      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }

  /* =================================== 
        SEND DATA GENERAL
      =================================== */
  function sendDataGeneral(obj) {
    $.ajax({
      type: "POST",
      url: UrlSendDatosGenral,
      timeout: 2000,
      data: obj,
      success: function (data) {
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Sus datos generales fueron guardados correctamente');
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }

  $scope.imagesProfile = function () {
    $('#modalImages').modal('show');
  }
  /* =================================== 
            OPTION OF ACCESS
     =================================== */
  function ACCESS() {
    if ($scope.sessionExist != "" && $scope.sessionExist != null) {
      var idNanny = Dataservice.GetFilter();
      if (idNanny == undefined) {
        location.href = "/";
      } else {
        if ($scope.sessionExist[0].id == idNanny.nanny) {
          alertify.set('notifier', 'position', 'top-right');
          alertify.success("Bienvenido a su sesión en Nanny 365");
          var id = $scope.sessionExist[0].id;
          getImages(id);
          getData();
          getDisponibilidad(id)
        } else {
          alertify.set('notifier', 'position', 'top-right');
          alertify.error("No tiene acceso a esta página, si lo considera un error  por favor contacte a Nanny 365");
          location.href = "/";
        }
      }
    } else {
      location.href = "/";
    }
  }
  /* =================================== 
               GET IMAGES
     =================================== */
  function getImages(id) {
    $.ajax({
      type: "POST",
      url: 'api/get-images/json',
      timeout: 2000,
      data: {
        id: id
      },
      success: function (data) {
        $scope.datosUser = data.result.Database[0].Table.Row[0]
        // console.log($scope.datosUser)
        if ($scope.datosUser.length == 1) {
          document.getElementById("chamgeImages").src = "/public/images/" + $scope.datosUser[0].imagesP;
        } else {
          // console.log('empty')
        }
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }
  /* =================================== 
          GET DATA OF NANNY
     =================================== */
  function getData() {
    Dataservice.getData($scope.sessionExist[0].id).then(function (response) {
      var dataPersonal = response.data.result.Database[0].Table.Row[0]
      $scope.images = dataPersonal.imagesP;
      if (dataPersonal.length != 0) {
        setDataPersonal(dataPersonal);
        setDataGeneral(dataPersonal);
      }
    })
  }
  /*###################################################### */
  //                 DATA FOR UPDATE 
  /*###################################################### */
  function setDataPersonal(dataPersonal) {
    $('#preview').hide();
    document.getElementById('nombre').value = dataPersonal[0].nombre;
    document.getElementById('telefono').value = dataPersonal[0].telefono;
    document.getElementById('identificacion').value = dataPersonal[0].numeroID;
    $scope.fechaNacimiento = dataPersonal[0].fechaNacimiento;
    // console.log(dataPersonal[0].fechaNacimiento)
    $scope.Images = dataPersonal[0].imagesID;
    $scope.ImagesPrincipal = dataPersonal[0].imagesP;
    if ($scope.Images != "") {
      $scope.imagesID = false;
      document.getElementById("chamgeImagesID").src = "/public/images/" + $scope.Images;
    }
   
    if (dataPersonal[0].numeroID != "") {
      $scope.identificationInput = false;
      $scope.validID = true;
    } else {

    }
    if (dataPersonal[0].privateNumber == "on") {
      $('.toggle').removeClass('btn-outline-danger off');
      $('.toggle').addClass('btn-outline-success');
    } else {
      $('.toggle').addClass('btn-outline-danger off');
      $('.toggle').removeClass('btn-outline-success');
    }

  }

  function setDataGeneral(dataPersonal) {
    // console.log(dataPersonal)
    document.getElementById('tarifa').value = dataPersonal[0].tarifa;
    document.getElementById('sobreMi').value = dataPersonal[0].sobreMi
    /*========================
       SERVICIOS ESPECIALES 
     ========================*/
    var objservicesEs = dataPersonal[0].serviciosEspeciales;
    if (objservicesEs == null) {
      $scope.servicesEs = "";
    } else {
      $scope.servicesEs = objservicesEs.split(",", 9);
      $scope.serviceEspe = $scope.servicesEs;
    }
    /*=============================
       OTHERS SERVICIOS ESPECIALES 
      =============================*/
    var objOthersEspe = dataPersonal[0].othersServiceEspeciales;
    if (objOthersEspe == null) {
      $scope.serviceOthers = "";
    } else {
      $scope.othersEspe = objOthersEspe.split(",", 9);
      $scope.serviceOthers = $scope.othersEspe;
    }
    /*========================
             SERVICIOS 
      ========================*/
    var objservices = dataPersonal[0].servicios;
    if (objservices == null) {
      $scope.servicesCheck = null;
    } else {
      $scope.servicesCheck = objservices.split(",", 9);
      $scope.service = $scope.servicesCheck;
    }
    /*===============================
      OTHERS SERVICIOS ADICIONALES 
      ===============================*/
    var objOthersAdi = dataPersonal[0].othersInformacionAdicional;
    if (objOthersAdi == null) {
      $scope.serviceAdicionalOthers = "";
    } else {
      $scope.othersADi = objOthersAdi.split(",", 9);
      $scope.serviceAdicionalOthers = $scope.othersADi;
    }
    /*========================
           CERTIFICACION 
     ========================*/
    var objcertification = dataPersonal[0].certificacion;
    if (objcertification == null) {
      $scope.cert
    } else {
      $scope.cert = objcertification.split(",", 9);
      $scope.certification = $scope.cert;
    }

    /*========================
           VERIFICACION
     ========================*/
    var objverificaciones = dataPersonal[0].verificacion;
    if (objverificaciones == null) {
      $scope.verificacion = ""
    } else {
      $scope.verificacion = objverificaciones.split(",", 9);
      // console.log($scope.verificacion)
      $scope.verification = $scope.verificacion;
    }

    /*========================
       SERVICIOS ADICIONALES 
     ========================*/
    var objservicesA = dataPersonal[0].serviciosAdicionales;
    if (objservicesA == null) {
      $scope.servicesA = "";
    } else {
      $scope.servicesA = objservicesA.split(",", 9);
      $scope.serviceAditional = $scope.servicesA;
    }

    /*========================
              ZONAS 
      ========================*/
    var objzonasD = dataPersonal[0].zona;
    if (objzonasD == null) {
      $scope.zonasdondePS = "";
    } else {
      $scope.zonasdondePS = objzonasD.split(",", 9);
      $scope.zonas = $scope.zonasdondePS;
      // console.log( $scope.zonas )
    }

    /*======================================
              SELECTED NANNY DB
     ======================================*/

    for (let i = 0; i < 5; i++) {
      if (dataPersonal[0].experiencia == $scope.experience[i].name) {
        document.getElementById($scope.experience[i].id).checked = true;
        $scope.expe = $scope.experience[i].name;
      }
    }

    $.each($scope.servicesCheck, function (i, v) {
      var gruposE = $scope.services;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })

    $.each($scope.servicesEs, function (i, v) {
      var gruposE = $scope.serviceEspecial;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })


    $.each($scope.servicesA, function (i, v) {
      var gruposE = $scope.serviceEspecialTwo;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })

    $.each($scope.cert, function (i, v) {
      var gruposE = $scope.certificacion;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })


    $.each($scope.verificacion, function (i, v) {
      var gruposE = $scope.certificaionTwo;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })

    $.each($scope.zonasdondePS, function (i, v) {
      var gruposE = $scope.Zonas;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })
    /*==============================================
        validacion de otros servicios especiales
      ==============================================*/
    if (dataPersonal[0].othersServiceEspeciales != "" && dataPersonal[0].othersServiceEspeciales != null) {
      $scope.otherServicesEspecial = false;
    } else {
      $scope.otherServicesEspecial = true;
    }


    if (dataPersonal[0].othersInformacionAdicional != "" && dataPersonal[0].othersInformacionAdicional != null) {
      $scope.otherServicesAdicional = false;
    } else {
      $scope.otherServicesAdicional = true;
    }
  }

  function getDisponibilidad(id) {
    Dataservice.getDisponibilidadNanny(id).then(function (data) {
      var disponibilidad = data.data.result.Database[0].Table.Row[0];
      if (disponibilidad.length == 0) {
        alertify.set('notifier', 'position', 'top-right');
        alertify.error("No has publicado tus  disponibilidad en Nanny 365");
        // console.log('a un no ah agregado sus dias disponibles ');
      } else {
        setdataDisponibilidad(disponibilidad)
      }
    })
  }

  function setdataDisponibilidad(disponibilidad) {

    for (const i in disponibilidad) {
      document.getElementById(`${disponibilidad[i].dia}`).value = disponibilidad[i].horaInicio;
      document.getElementById(`${disponibilidad[i].dia}Cierre`).value = disponibilidad[i].horaFinal;
    }

    // document.getElementById(`${disponibilidad[0].dia}`).value =disponibilidad[0].horaInicio;
  }




  $scope.validateCedula = function (cedula) {

    if ($scope.c == true) {
      //Patrones aceptados 
      // Regular (provincia-libro-tomo). Ej: 1-1234-12345
      // Panameño nacido en el extranjero (PE-libro-tomo). Ej: PE-1234-12345
      // Extranjero con cédula (E-libro-tomo). Ej: E-1234-12345
      // Naturalizado (N-libro-tomo). Ej: N-1234-12345
      // Panameños nacidos antes de la vigencia (provinciaAV-libro-tomo). Ej: 1AV-1234-12345
      // Población indigena (provinciaPI-libro-tomo). Ej: 1PI-1234-12345
      //-------------------------------------------------------------------------------------
      // Identificación de las provincias
      // 1- Bocas del Toro
      // 2 - Coclé
      // 3 - Colón
      // 4 - Chiriquí
      // 5 - Darién (Madugandí - Wargandi)
      // 6 - Herrera
      // 7 - Los Santos
      // 8 - Panamá
      // 9 - Veraguas
      // 10 - Guna Yala
      // 11 - Emberá Wounaan
      // 12 - Ngäbe-Buglé
      // 13 - Panamá Oeste
      Array.prototype.insert = function (index, item) {
        this.splice(index, 0, item);
      };
      var re = /^P$|^(?:PE|E|N|[23456789]|[23456789](?:A|P)?|1[0123456789]?|1[0123456789]?(?:A|P)?)$|^(?:PE|E|N|[23456789]|[23456789](?:AV|PI)?|1[0123456789]?|1[0123456789]?(?:AV|PI)?)-?$|^(?:PE|E|N|[23456789](?:AV|PI)?|1[0123456789]?(?:AV|PI)?)-(?:\d{1,4})-?$|^(PE|E|N|[23456789](?:AV|PI)?|1[0123456789]?(?:AV|PI)?)-(\d{1,4})-(\d{1,9})$/i
      var matched = cedula.match(re)
      // matched contains:
      // 1) if the cedula is complete (cedula = 8-AV-123-123)
      //    matched = [cedula, first part, second part, third part]
      //    [8AV-123-123]
      // 2) if the cedula is not complete (cedula = "1-1234")
      //    matched = ['1-1234', undefined, undefined, undefined]
      var isComplete = false;
      if (matched !== null) {
        matched.splice(0, 1); // remove the first match, it contains the input string.
        if (matched[0] !== undefined) { // if matched[0] is set => cedula complete
          isComplete = true;
          if (matched[0].match(/^PE|E|N$/)) {
            matched.insert(0, '0');
          }
          if (matched[0].match(/^(1[0123456789]?|[23456789])?$/)) {
            matched.insert(1, '');
          }
          if (matched[0].match(/^(1[0123456789]?|[23456789])(AV|PI)$/)) {
            var tmp = matched[0].match(/(\d+)(\w+)/);
            matched.splice(0, 1);
            matched.insert(0, tmp[1]);
            matched.insert(1, tmp[2]);
          }
        } // matched[0]
      }
      var result = {
        'isValid': cedula.length == 0 ? true : re.test(cedula),
        'inputString': cedula,
        'isComplete': isComplete,
        'cedula': isComplete ? matched.splice(0, 3) : null
      };
      // return result;
      if (result.cedula == null) {
        alertify.set('notifier', 'position', 'bottom-center');
        alertify.error("El formato de la cédula no es válida");
        $scope.validID = false;
      } else {
        $scope.validID = true;
      }
    } else {   
      $scope.validID = true;


      console.log('.')
    }

  }
  ACCESS()
}])

/*###################################################### */
//        PROVINCE,DISTRITO AND CORREGIMIENTO  
/*###################################################### */
// $scope.province = function () {
//   $scope.setDistrict = {
//     Panama: [{
//       id: 'district',
//       name: 'Distrito'
//     },],
//     selectedOption: {
//       id: 'district',
//       name: 'Distrito'
//     }
//   }
//   var province = document.getElementById('selectProvince').value;
//   $scope.provincespanama = province;
//   for (const key in $scope.searchProvince.provincia) {
//     if ($scope.searchProvince.provincia[key].name === province.toUpperCase()) {
//       var district = $scope.searchProvince.provincia[key];
//       for (const key in district.distritos) {
//         $scope.setDistrict.Panama.push({
//           id: district.distritos[key].id,
//           name: district.distritos[key].name
//         })

//       }
//     }

//   }
// }
// $scope.distric = function () {
//   $scope.corregimiento = {
//     Panama: [{
//       id: '00',
//       name: 'Zonas'
//     },

//     ],
//     selectedOption: {
//       id: '00',
//       name: 'Zonas'
//     }
//   }
//   var distritros = document.getElementById('selectdistrict').value;
//   for (const key in $scope.searchProvince.provincia) {
//     if ($scope.searchProvince.provincia[key].name === $scope.provincespanama.toUpperCase()) {
//       var district = $scope.searchProvince.provincia[key].distritos;
//       for (const i in district) {
//         if (district[i].name === distritros) {
//           for (const b in district[i].corregimientos) {
//             $scope.corregimiento.Panama.push({
//               id: district[i].corregimientos[b].id,
//               name: district[i].corregimientos[b].name
//             })

//           }
//         }
//       }
//     }
//   }
// }