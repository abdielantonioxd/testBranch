app.factory("Dataservice", function ($http) {
  const Nannys = 'api/get-nannys/json';
  const getnanny = 'api/get-data/json';
  const disponibilidadNanny = 'api/get-disponibilidad/json';
  const UrlFilter = 'api/send-filter/json';
  var Dataservice = {
    GetFilter: function () {
      var loc = document.URL;
      if (loc.indexOf('?') != -1) {
        var getString = loc.split('?')[1];
        var params = getString.split('&');
        var objectget = {};
        for (const i in params) {
          var tmp = params[i].split('=');
          objectget[tmp[0]] = unescape(decodeURI(tmp[1]));
        }
        return objectget;
      } else { }
      return objectget
    },
    selectNannys: function () {
      return $http.get(Nannys).then(function (data) {
        return data
      })
    },
    getData: function (id) {
      return $http.post(getnanny, { id: id }).then(function (data) {
        return data
      })
    },
    getDisponibilidadNanny: function (id) {
      return $http.post(disponibilidadNanny, { id: id }).then(function (data) {
        return data
      })
    },
    sendFilter: function (data,experiencia, option) {
      return $http.post(UrlFilter, { data: data, option: option,experiencia:experiencia}).then(function (data) {
        return data
      })

    }
  }
  return Dataservice;
})