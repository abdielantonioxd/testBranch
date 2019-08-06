app.controller('ctrl-search-nanny', ['$scope', 'Dataservice', '$http', function ($scope, Dataservice, $http) {
  $scope.sessionExist = JSON.parse(ExistSession);
  $scope.zonas = SearchZonas;
  $scope.experience = Check_Experience;
  $scope.serviceEspecial = Check_ServicesEspecial
  $scope.serviceEspecialTwo = Check_ServicesEspecialTwo;
  $scope.services = Check_Services;
  $scope.Zonas = SearchZonas;
  $scope.value = 0;
  $scope.valueTarifas = 0;
  $scope.zona = "";
  $scope.experiencias = "";
  $scope.hidelimit = false;
  $scope.hidelimitTo = true;
  $scope.viewTarifa = false;
  $scope.certifify = true;
  $scope.verify = true;
  $scope.limit = 4;
  $scope.experiencia = "";
  $scope.newExpe = 5;
  var oldValueExpe = "";
  var oldValueExpeOne = [];
  var oldValueGroup = "";
  var oldValuesServiceEsp = "";
  var oldValueZonas = "";
  /** ============================================================== */
  //                    SEARCH AND FILTER   NANNYS  
  /** ============================================================== */

  $scope.enter = function ($event) {
    if ($event.originalEvent.key == "Enter") {
      $scope.searchInput();
    }
  }

  $scope.searchInput = function () {
    var obj = {
      data: `%${document.getElementById('searchInp').value}%`,
      experiencia: '',
      option: 'searchInp'
    };
    $scope.filter(obj)
  }

  $scope.experiencias = function (experiencia) {
    $scope.experiencia = experiencia.name;
    // console.log($scope.experiencia)
    if (experiencia.id != oldValueExpe) {
      if ($scope.experiencia == 'Sin Experiencia') {
        $scope.expe = 0;
        // console.log($scope.expe)
        var obj = {
          data: '',
          experiencia: $scope.expe,
          // experiencia: $scope.expe,
          //   experienciaTwo:$scope.expe,
          //   experienciathree: $scope.expe,
          //   experienciafour: $scope.expe,
          //   experienciaFive: $scope.expe,
          option: 'Experiencia'
        };
        oldValueExpe = experiencia.id;
        $scope.filter(obj)
      } else {
        var separador = $scope.experiencia.split(" ", 5);
        $scope.newExpe = separador[0];
        oldValueExpe = experiencia.id;
        oldValueExpeOne.push(JSON.parse(separador[0]));
        // console.log('datoOldValue : ' + oldValueExpe + " datoOldValueOne : " + oldValueExpeOne + " datoEntrante : " + $scope.newExpe)
        var separadorData = oldValueExpeOne;
        var obj = {
          data: '',
          experiencia: $scope.newExpe,
          option: 'Experiencia'
        };
        console.log(obj)
        $scope.filter(obj)
      }

    } else {
      if (oldValueExpe == experiencia.id) {
        $scope.loadPages();
        document.getElementById(experiencia.id).checked = false;
      } 
    }

  }

  $scope.getGroupYearsOld = function (getGroupYearsOld) {
    if (getGroupYearsOld.id != oldValueGroup) {
      var obj = {
        data: `%${getGroupYearsOld.name}%`,
        experiencia: $scope.newExpe,
        option: 'GruposE'
      };
      oldValueGroup = getGroupYearsOld.id;
      console.log(obj)
      $scope.filter(obj)
    } else {
      $scope.loadPages();
    }
  }

  $scope.getServiceEspeciales = function (servEspeciales) {
    if (servEspeciales.id != oldValuesServiceEsp) {
      var obj = {
        data: `%${servEspeciales.name}%`,
        experiencia: $scope.newExpe,
        option: 'ServiciosEs'
      };
      oldValuesServiceEsp = servEspeciales.id;
      console.log(obj)
      $scope.filter(obj)
    } else {
      $scope.loadPages();
    }
  }

  $scope.getZonas = function (zonas) {
    if (zonas.id != oldValueZonas) {
      var obj = {
        data: `%${zonas.name}%`,
        experiencia: $scope.newExpe,
        option: 'Zonas'
      };
      oldValueZonas = zonas.id;
      console.log(obj)
      $scope.filter(obj)
    } else {
      document.getElementById(zonas.id).checked = false;
      $scope.loadPages();
    }
  }

  $scope.filter = function (obj) {
    Dataservice.sendFilter(obj.data, obj.experiencia, obj.option).then(function (data) {
      var newDataNanny = data.data.result.Database[0].Table.Row[0];
      showNewData(newDataNanny)
    })
  }

  function showNewData(newDataNanny) {
    $scope.$watch($scope.resultNanny = newDataNanny,
      $scope.result = newDataNanny.length
    )
    alertify.set('notifier', 'position', 'top-right');
    alertify.success(`${$scope.result} Resultados de la busqueda `);
  }
  /*================================================= */
  //                  ZONAS PANAMA
  /*================================================= */

  $scope.limite = function () {
    $scope.hidelimit = true;
    $scope.hidelimitTo = false;
    $scope.limit = 100;
  }
  $scope.limitTo = function () {
    $scope.hidelimit = false;
    $scope.hidelimitTo = true;
    $scope.limit = 4;
  }

  function filterYearsOld() {
    var i = 0;
    var slider2 = new rSlider({
      target: '#yearsOld',
      values: [18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 32, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90],
      step: 1,
      range: true,
      set: [18, 90],
      tooltip: true,
      scale: true,
      labels: false,
      width: null,
      onChange: function (vals) {
        var objservicesE = vals;
        var yearsOld = objservicesE.split(",");
        var obj = {
          dataOne: 2019 - yearsOld[0],
          dataTwo: 2019 - yearsOld[1],
          option: "Edad"
        }
        if (i > 0) {
          $scope.filterRanges(obj)
        }
        i++;
      }
    });
  };

  function filterPrice() {
    var p = 0;
    var slider3 = new rSlider({
      target: '#priceRange',
      values: [5, 10, 15, 20, 25, 30, 35, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100],
      step: 1,
      range: true,
      set: [5, 100],
      tooltip: true,
      scale: true,
      labels: false,
      width: null,
      onChange: function (vals) {
        var objRanges = vals;
        var range = objRanges.split(",");
        $scope.viewTarifa = true;
        $scope.tarifa = range[0];
        $scope.tarifa2 = range[1];
        var obj = {
          dataOne: range[0],
          dataTwo: range[1],
          option: "Tarifa"
        }
        if (p > 0) {
          $scope.filterRanges(obj)
        }
        p++;
      }
    });
  };

  $scope.filterRanges = function (obj) {
    $.ajax({
      type: "POST",
      url: UrlfilterRange,
      timeout: 2000,
      data: obj,
      success: function (data) {
        var newDataNanny = data.result.Database[0].Table.Row[0]
        // console.log(newDataNanny)
        $scope.$digest($scope.resultNanny = newDataNanny,
          $scope.result = newDataNanny.length
        )
        // alertify.set('notifier', 'position', 'top-right');
        // alertify.success(`${$scope.result} Resultados de la busqueda `);
      },
      error: function (textStatus, err) {
        console.log(textStatus + "" + err);
      }
    });
  }
  /*###################################################### */
  //                  LOAD DATA PAGES 
  /*###################################################### */
  $scope.loadPages = function () {
    Dataservice.selectNannys().then(function (response) {
      $scope.result = response.data.result.Database[0].Table.Row[0].length;
      $scope.resultNannypagination = response.data.result.Database[0].Table.Row[0];
      $scope.resultNanny = $scope.resultNannypagination;
      // console.log($scope.resultNanny)
      if (response.data.result.Database[0].Table.Row[0].length != 0) {
        if ($scope.resultNanny[0].certificacion == "") {
          $scope.certifify = true;
        } else {
          $scope.certifify = true;
        }
        $scope.objVerify = $scope.resultNanny[0].verificacion.split(",", 9);
        $scope.very = $scope.objVerify;
        for (const key in $scope.very) {
          if ($scope.very[key] == "Residencia") {
            $scope.verify = false;
          }
        }

      } else {
        console.log('empty')
      }
      
      $scope.currentPage = 0;
      $scope.pageSize = 10;
      $scope.pages = [];
      $scope.pages.length = 0;
      var ini = $scope.currentPage - 10;
      var fin = $scope.currentPage + 10;
      if (ini < 1) {
        ini = 1;
        if (Math.ceil($scope.resultNannypagination.length / $scope.pageSize) > 10)
          fin = 5;
        else
          fin = Math.ceil($scope.resultNannypagination.length / $scope.pageSize);
      } else {
        if (ini >= Math.ceil($scope.resultNannypagination.length / $scope.pageSize) - 10) {
          ini = Math.ceil($scope.resultNannypagination.length / $scope.pageSize) - 10;
          fin = Math.ceil($scope.resultNannypagination.length / $scope.pageSize);
        }
      }
      if (ini < 1) ini = 1;
      for (var i = ini; i <= fin; i++) {
        $scope.pages.push({
          num: i
        });
      }

      if ($scope.currentPage >= $scope.pages.length)
        $scope.currentPage = $scope.pages.length - 1;

      $scope.setPage = function (index) {
        $scope.currentPage = index - 1;
      };
    })
  }

  /* ========================================= */
  //         DOBLE CLICK FUNCTION 
  /* ========================================= */

  $scope.loadPages();
  filterYearsOld();
  filterPrice();
}])

 // if (separadorData.length == 1) {
        //           in _expeTwo varchar(20),
        // in _expeThree varchar(20),
        // in _expeFour varchar(20),
        // in _expeFive varchar(20)
        //   var obj = {
        //     data: '',
        //     experiencia: $scope.newExpe,
        //     experienciaTwo: $scope.newExpe,
        //     experienciathree: $scope.newExpe,
        //     experienciafour: $scope.newExpe,
        //     experienciaFive: $scope.newExpe,
        //     option: 'Experiencia'
        //   };
        //   // console.log(obj)
        // } else {
        //   if (separadorData.length == 2) {
        //     var obj = {
        //       data: '',
        //       experiencia: separadorData[0],
        //       experienciaTwo: separadorData[1],
        //       experienciathree: separadorData[0],
        //       experienciafour: separadorData[0],
        //       experienciaFive: separadorData[0],
        //       option: 'Experiencia'
        //     };
        //     // console.log(obj)
        //   } else {
        //     if (separadorData.length == 3) {
        //       var obj = {
        //         data: '',
        //         experiencia: separadorData[0],
        //         experienciaTwo: separadorData[1],
        //         experienciathree: separadorData[2],
        //         experienciafour: separadorData[0],
        //         experienciaFive:separadorData[0],
        //         option: 'Experiencia'
        //       };
        //       // console.log(obj)
        //     } else {
        //       if (separadorData.length == 4) {
        //         var obj = {
        //           data: '',
        //           experiencia: separadorData[0],
        //           experienciaTwo: separadorData[1],
        //           experienciathree: separadorData[2],
        //           experienciafour: separadorData[3],
        //           experienciaFive: separadorData[0],
        //           option: 'Experiencia'
        //         };
        //         // console.log(obj)
        //       } else {
        //         if (separadorData.length == 5) {
        //           var obj = {
        //             data: '',
        //             experiencia:separadorData[0],
        //             experienciaTwo: separadorData[1],
        //             experienciathree: separadorData[2],
        //             experienciafour: separadorData[3],
        //             experienciaFive: separadorData[4],
        //             option: 'Experiencia'
        //           };
        //           // console.log(obj)
        //         } else {

        //         }
        //       }
        //     }
        //   }
        // }