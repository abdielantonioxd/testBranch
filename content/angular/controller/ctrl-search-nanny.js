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
  $scope.newExpe = 0;
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
  var setRangeYearsOldMin = 18;
  var setRangeYearsOldMax = 80;
  var setRangePricedMin = 5;
  var setRangePricedMax = 100;
  var exp = $scope.newExpe;
  var op = 10;
  var Pselect = 1;
  /* PERSISTENCE OF OBJECTS   */
  var cookie_experience = cookie.get("experience-persistence");
  var cookie_groupYears = cookie.get("groupYearsOldNannys-persistence");
  var cookie_serviceEsp = cookie.get("servicesEspe-persistence");
  var cookie_zone = cookie.get("zone-persistence");
  var cookie_rangeYearsOld = cookie.get("rangeYearsOld-persistence");
  var cookie_rangePrice = cookie.get("rangePrice-persistence");
  var cookie_pagesSelected = cookie.get("PagesSelected-persistence");
  var cookie_rouwCount = cookie.get("countRow-persistence");

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
        oldValueExpe = experiencia.id;
        $scope.filter(obj)
      }

    } else {
      if (oldValueExpe == experiencia.id) {
        Pselect = "";
        document.getElementById(experiencia.id).checked = false;
      }
    }

  }

  function filterListYearsOld() {
    var obj = {
      data: listZonasNannys + ',' + listServicesSpecial + ',' + listYearOldNanny,
      experiencia: $scope.newExpe,
      option: 'GruposE'
    };
    // console.log(obj)
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
          data: `%${listYearOldNanny}%`,
          experiencia: $scope.newExpe,
          option: 'GruposE'
        };
        console.log(listYearOldNanny)
        $scope.filter(obj)
      }
      oldValueGroup = getGroupYearsOld.id;
    } else {
      // $scope.loadPages(op)
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
          data: listZonasNannys + ',' + listServicesSpecial + ',' + listYearOldNanny,
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
      // $scope.loadPages();
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
          data: listZonasNannys + ',' + listServicesSpecial + ',' + listYearOldNanny,
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

  $scope.filterAll = function (obj) {
    Dataservice.sendFilterAll(obj.groupMin, obj.groupMax, obj.groupEdad, obj.serv_esp, obj.tarifaMin, obj.tarifaMax, obj.zonas, obj.experiencia, obj.option).then(function (data) {
      var newDataNanny = data.data.result.Database[0].Table.Row[0];
      // console.log(newDataNanny);
      showNewData(newDataNanny);

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
      $scope.countNannys = newDataNanny.length,
    )
    alertify.set('notifier', 'position', 'top-right');
    alertify.success(`${ $scope.countNannys } Resultados de la busqueda `);
    var numPages = 10
    pagination(numPages, Pselect)
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

  function filterYearsOld(setRangeYearsOldMin, setRangeYearsOldMax, exp) {
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
        if (vals != '18,80') {
          var objservicesE = vals;
          var yearsOld = objservicesE.split(",");
          if (cookie_experience != "") {
            var experi = cookie_experience;
            var separador = experi.split(" ", 5);
            exp = separador[0];
          } else {
            if ($scope.newExpe != "") {
              exp = $scope.newExpe;
            } else {
              exp = 0;
            }
          }

          var obj = {
            dataOne: 2019 - yearsOld[0],
            dataTwo: 2019 - yearsOld[1],
            experience: exp,
            option: "Edad"
          }
          $scope.GMin = yearsOld[0];
          $scope.GMax = yearsOld[1]
          cookie.set("rangeYearsOld-persistence", yearsOld, 1);
          if (i > 0) {
            if (obj.dataOne != '18' && obj.dataTwo != '80') {
              $scope.filterRanges(obj)
            }
          }
          i++;
        }
      }
    });
  };

  function filterPrice(setRangePricedMin, setRangePricedMax, exp) {
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
        // console.log(vals)
        if (vals != '5,100') {
          var objRanges = vals;
          var range = objRanges.split(",");
          $scope.viewTarifa = true;
          $scope.tarifa = range[0];
          $scope.tarifa2 = range[1];
          if (cookie_experience != "") {
            var experi = cookie_experience;
            var separador = experi.split(" ", 5);
            exp = separador[0];
          } else {
            if ($scope.newExpe != "") {
              exp = $scope.newExpe;
            } else {
              exp = 0;
            }
          }
          var obj = {
            dataOne: range[0],
            dataTwo: range[1],
            experience: exp,
            option: "Tarifa"
          }
          $scope.PMin = range[0];
          $scope.PMax = range[1]
          cookie.set("rangePrice-persistence", range, 1);
          if (p > 0) {
            if (obj.dataOne != 5 && obj.dataTwo != 100) {
              $scope.filterRanges(obj)
            }

          }
          p++;
        }
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
        // console.log(textStatus + "" + err);
      }
    });
  }

  /*###################################################### */
  //                  LOAD DATA PAGES 
  /*###################################################### */
  function countPagesNanny() {
    Dataservice.countNanny().then(function (data) {
      $scope.countNannys = data.data.result.Database[0].Table.Row[0][0].rows;
      cookie.set("countRow-persistence", $scope.countNannys, 1);
    })
  }

  $scope.loadPages = function (op, Pselect) {
    if ($scope.newExpe === 0 && listTempGroupYears.length === 0 && listServicesSpecial.length === 0 && listZonasNannys.length === 0 && cookie_experience === "" && cookie_zone === "" ) {
      getDataPaginationNanny(op, Pselect);
    }
  }

  function getDataPaginationNanny(op, Pselect) {
    if (Pselect === "") {
      Pselect = 1;
    }
    var dataPagination = {
      start: 0,
      limit: Pselect + "0"
    }

    Dataservice.loadPagesNanny(dataPagination.start, dataPagination.limit).then(function (data) {
      $scope.result = data.data.result.Database[0].Table.Row[0].length;
      $scope.resultNannypagination = data.data.result.Database[0].Table.Row[0];
      $scope.resultNanny = $scope.resultNannypagination;
      if (data.data.result.Database[0].Table.Row[0].length != 0) {
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
      }

      if (op === "") {
        op = 10
      }

      pagination(op, Pselect)
    })
  }

  function pagination(op, Pselect) {
    $scope.totalItems = cookie_rouwCount;
    $scope.currentPage = Pselect;
    $scope.itemsPerPage = op;
    $scope.maxSize = 5;
    $scope.setPage = function (pageNo) {
      $scope.currentPage = pageNo;
    };

    $scope.setPage = function (pageNo) {
      $scope.currentPage = pageNo;
    };

    $scope.pageChanged = function () {
      cookie.set("PagesSelected-persistence", $scope.currentPage, 1);
      Pselect = $scope.currentPage
      $scope.loadPages(op, Pselect)
      $('html, body').animate({ scrollTop: 0 }, 'slow');
    };
  }

  $scope.setItemsPerPage = function (num) {
    numPages = num.numPagesselected.selectedOption.num
    $scope.itemsPerPage = num;
    $scope.currentPage = 1; //reset to first page
    pagination(numPages, Pselect)
    $scope.loadPages(numPages, Pselect)
  }
  /* ========================================= */
  //         PERSISTENCE OF DATA 
  /* ========================================= */

  function setPersistenceExp() {
    if (cookie_experience === 'Sin Experiencia') {
      document.getElementById('never').checked = true;
      var obj = {
        data: '',
        experiencia: 0,
        option: 'Experiencia'
      };
      sendFilterExp(obj)
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
          sendFilterExp(obj)
        }
      }
    }
    function sendFilterExp(obj) {
      $scope.filter(obj)
    }
  }

  function persistenceGroupOfYearsNannys() {
    $scope.groupYearsNannyArray = cookie_groupYears.split(",", 9);
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
    if ($scope.persistence_expe != undefined) {
      if ($scope.persistence_expe != " ") {
        exp = $scope.persistence_expe;
      } else {
        exp = 0
      }
    } else {
      exp = 0
    }

    if ($scope.groupYearsNannyArray.length > 1) {
      var obj = {
        data: cookie_groupYears,
        experiencia: exp,
        option: 'GruposE'
      };
      $scope.filterList(obj);
      // console.log('Two ')


    } else {
      var obj = {
        data: `%${cookie_groupYears}%`,
        experiencia: exp,
        option: 'GruposE'
      };
      $scope.filter(obj)
      // console.log('one ')
    }

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
    if ($scope.persistence_expe != undefined) {
      if ($scope.persistence_expe != " ") {
        exp = $scope.persistence_expe;
      } else {
        exp = 0
      }
    } else {
      exp = 0
    }

    if ($scope.serviceEspNannyArray.length > 1) {
      var obj = {
        data: cookie_serviceEsp,
        experiencia: exp,
        option: 'ServiciosEs'
      };
      $scope.filterList(obj);
    } else {
      var obj = {
        data: `%${cookie_serviceEsp}%`,
        experiencia: exp,
        option: 'ServiciosEs'
      };
      $scope.filter(obj);
    }

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
    if ($scope.persistence_expe != undefined) {
      if ($scope.persistence_expe != " ") {
        exp = $scope.persistence_expe;
      } else {
        exp = 0
      }
    } else {
      exp = 0
    }
    if ($scope.zoneNannyArray.length > 1) {
      var obj = {
        data: cookie_zone,
        experiencia: exp,
        option: 'Zonas'
      };
      $scope.filterList(obj);
    } else {
      var obj = {
        data: `%${cookie_zone}%`,
        experiencia: exp,
        option: 'Zonas'
      };
      $scope.filter(obj);
    }

  }

  function persistenceRangeYearsOld() {
    var yearsOld = cookie_rangeYearsOld.split(",");
    setRangeYearsOldMin = yearsOld[0];
    setRangeYearsOldMax = yearsOld[1];
    if ($scope.persistence_expe != " ") {
      exp = $scope.persistence_expe;
    } else {
      exp = 0
    }
    if (cookie_rangeYearsOld != '18,80') {
      intMin = parseInt(setRangeYearsOldMin, 10)
      intMax = parseInt(setRangeYearsOldMax, 10)
      filterYearsOld(intMin, intMax, exp)
    }
  }

  function persistenceRangePrice() {
    var range = cookie_rangePrice.split(",");
    setRangePricedMin = range[0];
    setRangePricedMax = range[1];
    intMin = parseInt(setRangePricedMin, 10)
    intMax = parseInt(setRangePricedMax, 10)
    if ($scope.persistence_expe != " ") {
      exp = $scope.persistence_expe;
    } else {
      exp = 0
    }
    if (cookie_rangePrice != '5,100') {
      filterPrice(intMin, intMax, exp);
    }

  }

  /* ========================================= */
  //       LOAD   PERSISTENCE OF DATA 
  /* ========================================= */

  setTimeout(() => {
    if (cookie_experience != "") {
      setPersistenceExp()
    }

    if (cookie_groupYears != "") {
      listTempGroupYears.push(cookie_groupYears);
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

  }, 200);

  /* ========================================= */
  //              DELETE COOKIE
  /* ========================================= */
  $scope.deletecookie = function () {
    cookie.delete("experience-persistence");
    cookie.delete("groupYearsOldNannys-persistence");
    cookie.delete("servicesEspe-persistence");
    cookie.delete("zone-persistence")
    cookie.delete("rangeYearsOld-persistence");
    cookie.delete("rangePrice-persistence");
    cookie.delete("PagesSelected-persistence")
    location.href = "/busqueda-de-nanny"
  }
  
  if (cookie_rangeYearsOld != "" && cookie_rangeYearsOld != '18,80') {
    persistenceRangeYearsOld()
  } else {
    filterYearsOld(setRangeYearsOldMin, setRangeYearsOldMax, exp);
  }

  if (cookie_rangePrice != "" && cookie_rangePrice != '5,100') {
    persistenceRangePrice();
  } else {
    filterPrice(setRangePricedMin, setRangePricedMax, exp);
  }

  if (cookie_pagesSelected != "") {
    countPagesNanny()
    Pselect = parseInt(cookie_pagesSelected, 10);
    $scope.loadPages(op, Pselect);
  } else {
    if (cookie_experience === "" && cookie_groupYears === "" && cookie_serviceEsp === "" && cookie_zone === "" && cookie_rangePrice === "") {
      countPagesNanny()
      $scope.loadPages(op, Pselect);
    }
  }
  // countPagesNanny()
}])