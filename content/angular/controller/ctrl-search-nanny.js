app.controller('ctrl-search-nanny', ['$scope', 'Dataservice', '$http', function ($scope, Dataservice, $http) {
  let {
    cookie
  } = plugdo;
  $scope.sessionExist = JSON.parse(ExistSession);
  $scope.zonas = SearchZonas;
  $scope.experience = Check_Experience;
  $scope.serviceEspecial = Check_ServicesEspecial
  $scope.serviceEspecialTwo = Check_ServicesEspecialTwo;
  $scope.services = Check_Services;
  $scope.Zonas = SearchZonas;
  $scope.numPagesselected = numPages;
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
  $scope.newExpe = 5;
  $scope.experiencia = "";
  var oldValueExpe = "";
  var oldValueGroup = "";
  var oldValuesServiceEsp = "";
  var oldValueZonas = "";
  var listYearOldNanny = [];
  var listServicesSpecial = [];
  var listZonasNannys = []
  var listTempGroupYears = [];
  var listTemServicesEsp = [];
  var listTemZone = [];
  var listRangeTemp=[];
  var setRangeYearsOldMin = 18;
  var setRangeYearsOldMax=80;
  var setRangePricedMin=5;
  var setRangePricedMax =100;
  var exp= $scope.newExpe;
  var op = 10;
  /* PERSISTENCE OF OBJECTS   */
  var cookie_experience = cookie.get("experience-persistence");
  var group_pers = cookie.get("groupYearsOldNannys-persistence");
  var cookie_serviceEsp = cookie.get("servicesEspe-persistence");
  var cookie_rangeYearsOld = cookie.get("rangeYearsOld-persistence");
  var cookie_zone = cookie.get("zone-persistence");
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
        var obj = {
          data: '',
          experiencia: $scope.expe,
          option: 'Experiencia'
        };
        oldValueExpe = experiencia.id;
        cookie.set("experience-persistence", experiencia.name, 1);
        $scope.filter(obj)
      } else {
        var separador = $scope.experiencia.split(" ", 5);
        $scope.newExpe = separador[0];
        oldValueExpe = experiencia.id;
        cookie.set("experience-persistence", experiencia.name, 1);
        var obj = {
          data: '',
          experiencia: $scope.newExpe,
          option: 'Experiencia'
        };
        $scope.filter(obj)
      }

    } else {
      if (oldValueExpe == experiencia.id) {
        $scope.loadPages();
        document.getElementById(experiencia.id).checked = false;
      }
    }

  }

  function filterListYearsOld() {
    var obj = {
      data: listYearOldNanny,
      experiencia: $scope.newExpe,
      option: 'GruposE'
    };
    $scope.filterList(obj)
  }


  $scope.getGroupYearsOld = function (getGroupYearsOld) {
    if (listTempGroupYears != "") {
      listYearOldNanny.push(listTempGroupYears);
    }
    if (getGroupYearsOld.id != oldValueGroup) {
      listYearOldNanny.push(getGroupYearsOld.name);
      cookie.set("groupYearsOldNannys-persistence", listYearOldNanny, 1);
      if (listYearOldNanny.length > 1) {
        filterListYearsOld()
      } else {
        var obj = {
          data: `%${getGroupYearsOld.name}%`,
          experiencia: $scope.newExpe,
          option: 'GruposE'
        };
        $scope.filter(obj)
      }
      oldValueGroup = getGroupYearsOld.id;
    } else {
      $scope.loadPages(op)
    }
  }

  $scope.getServiceEspeciales = function (servEspeciales) {
    if (listTemServicesEsp != "") {
      listServicesSpecial.push(listTemServicesEsp)
    }
    if (servEspeciales.id != oldValuesServiceEsp) {
      listServicesSpecial.push(servEspeciales.name)
      cookie.set("servicesEspe-persistence", listServicesSpecial, 1);
      if (listServicesSpecial.length > 1) {
        var obj = {
          data: listServicesSpecial,
          experiencia: $scope.newExpe,
          option: 'ServiciosEs'
        };
        oldValuesServiceEsp = servEspeciales.id;
        $scope.filterList(obj)
      } else {
        var obj = {
          data: `%${servEspeciales.name}%`,
          experiencia: $scope.newExpe,
          option: 'ServiciosEs'
        };
        oldValuesServiceEsp = servEspeciales.id;
        $scope.filter(obj)
      }

    } else {
      $scope.loadPages();
    }
  }

  /*================================================= */
  //                  ZONAS PANAMA
  /*================================================= */
  $scope.getZonas = function (zonas) {
    if (listTemZone != "") {
      listZonasNannys.push(listTemZone)
    }
    if (zonas.id != oldValueZonas) {
      listZonasNannys.push(zonas.name)
      cookie.set("zone-persistence", listZonasNannys, 1);
      if (listZonasNannys.length > 1) {
        var obj = {
          data: listZonasNannys,
          experiencia: $scope.newExpe,
          option: 'Zonas'
        };
        oldValueZonas = zonas.id;
        $scope.filterList(obj)
      } else {
        var obj = {
          data: `%${zonas.name}%`,
          experiencia: $scope.newExpe,
          option: 'Zonas'
        };
        oldValueZonas = zonas.id;
        $scope.filter(obj)
      }
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

  $scope.filterList = function (obj) {
    Dataservice.sendFilterList(obj.data, obj.experiencia, obj.option).then(function (data) {
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
  //                 RANGES TYPES
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

  function filterYearsOld(setRangeYearsOldMin,setRangeYearsOldMax,exp) {
    var i = 0;
    var slider2 = new rSlider({
      target: '#yearsOld',
      values: [18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 32, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80],
      step: 1,
      range: true,
      set: [setRangeYearsOldMin, setRangeYearsOldMax],
      tooltip: true,
      scale: true,
      labels: false,
      width: null,
      onChange: function (vals) {
        var objservicesE = vals;
        var yearsOld = objservicesE.split(",");
        if (exp != "") {
       
        }else{
          expe=0;
        }
        var obj = {
          dataOne: 2019 - yearsOld[0],
          dataTwo: 2019 - yearsOld[1],
          experience:$scope.newExpe,
          option: "Edad"
        }
        cookie.set("rangeYearsOld-persistence", yearsOld, 1);
        console.log(cookie_rangeYearsOld)
        if (i > 0) {
          $scope.filterRanges(obj)
        }
        i++;
      }
    });
  };

  function filterPrice(setRangePricedMin,setRangePricedMax,exp) {
    var p = 0;
    var slider3 = new rSlider({
      target: '#priceRange',
      values: [5, 10, 15, 20, 25, 30, 35, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100],
      step: 1,
      range: true,
      set: [setRangePricedMin, setRangePricedMax],
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
        if (exp != "") {
       
        }else{
          expe= 0;
        }
        var obj = {
          dataOne: range[0],
          dataTwo: range[1],
          experience:exp,
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
  $scope.changePages = function (op) {
    var num = op.numPagesselected.selectedOption.num;
    $scope.loadPages(num);
  }

  function pagination(op) {
    $scope.currentPage = 0;
    $scope.pageSize = op;
    $scope.pages = [];
    $scope.pages.length = 0;
    var ini = $scope.currentPage;
    var fin = $scope.currentPage + 5;
    if (ini < 1) {
      ini = 1;
      if (Math.ceil($scope.resultNannypagination.length / $scope.pageSize) > 5)
        fin = 10;
      else
        fin = Math.ceil($scope.resultNannypagination.length / $scope.pageSize);
    } else {
      if (ini >= Math.ceil($scope.resultNannypagination.length / $scope.pageSize) - 10) {
        ini = Math.ceil($scope.resultNannypagination.length / $scope.pageSize) - 10;
        fin = Math.ceil($scope.resultNannypagination.length / $scope.pageSize);
      }
    }

    if (ini < 1) ini = 6;
    for (var i = ini; i <= fin; i++) {
      $scope.pages.push({
        num: i
      });
    }

    if ($scope.currentPage >= $scope.pages.length) {
      $scope.currentPage = $scope.pages.length - 1;
    }
    $scope.setPage = function (index) {
      $scope.currentPage = index + 1;
    };
  }

  $scope.loadPages = function (op) {
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
      if (op === "") {
        op = 10
      }
      pagination(op)
    })

  }

  /* ========================================= */
  //         PERSISTENCE OF DATA 
  /* ========================================= */
  function setPersistenceExp() {
    if (cookie_experience === 'Sin Experiencia') {
      document.getElementById('never').checked = true;
    } else {
      for (let i = 0; i < 5; i++) {
        if (cookie_experience === $scope.experience[i].name) {
          document.getElementById($scope.experience[i].id).checked = true;
          var separador = cookie_experience.split(" ", 5);
          $scope.persistence_expe = separador[0];
          var obj = {
            data: '',
            experiencia: $scope.persistence_expe,
            option: 'Experiencia'
          };
          $scope.filter(obj)
        }
      }
    }

  }

  function persistenceGroupOfYearsNannys() {
    $scope.groupYearsNannyArray = group_pers.split(",", 9);
    $scope.groupYears = $scope.groupYearsNannyArray;
    $.each($scope.groupYears, function (i, v) {
      var array_X = $scope.services;
      $.each(array_X, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })
    var obj = {
      data: group_pers,
      experiencia: $scope.persistence_expe,
      option: 'GruposE'
    };
    $scope.filterList(obj);
  }

  function persistenceServicesEspe() {
    $scope.serviceEspNannyArray = cookie_serviceEsp.split(",", 9);
    $scope.servicesEspecialA = $scope.serviceEspNannyArray;
    $.each($scope.servicesEspecialA, function (i, v) {
      var array_X = $scope.serviceEspecialTwo;
      $.each(array_X, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })
    var obj = {
      data: cookie_serviceEsp,
      experiencia: $scope.persistence_expe,
      option: 'ServiciosEs'
    };
    $scope.filterList(obj);
  }

  function persistenceZone() {
    $scope.zoneNannyArray = cookie_zone.split(",", 9);
    $scope.zoneArr = $scope.zoneNannyArray;
    $.each($scope.zoneArr, function (i, v) {
      var gruposE = $scope.Zonas;
      $.each(gruposE, function (l, s) {
        if (v == s.name) {
          var id = s.id
          document.getElementById(id).checked = true;
        }
      })
    })
    var obj = {
      data: cookie_zone,
      experiencia:$scope.persistence_expe,
      option: 'Zonas'
    };
    $scope.filterList(obj)
  }

  /* ========================================= */
  //       LOAD   PERSISTENCE OF DATA 
  /* ========================================= */
  setTimeout(() => {
    if (cookie_experience != "") {
      setPersistenceExp()
    }

    if (group_pers != "") {
      listTempGroupYears.push(group_pers);
      console.log(listTempGroupYears)
      persistenceGroupOfYearsNannys();
    }

    if (cookie_serviceEsp != "") {
      listTemServicesEsp.push(cookie_serviceEsp);
      persistenceServicesEspe();
    }

    if (cookie_zone != "") {
      listTemZone.push(cookie_zone);
      persistenceZone();
    }

  }, 100);

  /* ========================================= */
  //              DELETE COOKIE
  /* ========================================= */
  $scope.deletecookie = function () {
    cookie.delete("experience-persistence");
    cookie.delete("groupYearsOldNannys-persistence");
    cookie.delete("servicesEspe-persistence");
    cookie.delete("zone-persistence")
    location.href = "/busqueda-de-nanny"
  }

  $scope.loadPages(op);
  filterYearsOld(setRangeYearsOldMin,setRangeYearsOldMax,exp);
  filterPrice(setRangePricedMin,setRangePricedMax,exp);
}])