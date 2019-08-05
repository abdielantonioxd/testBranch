mvc.controller({
  name: "homePages",
  action: "Home",
  path: "/",
  view: "home.ejs"
}, "homePages", function (req, homePages) {

  return homePages.returnAll()
});


mvc.controller({
  name: "solicitudPages",
  action: "solicitud",
  path: "/solicitud",
  view: "request.ejs"
}, "request", function (req, request) {

  return request.returnAll()
});


mvc.controller({
  name: "joinPages",
  action: "join",
  path: "/inicio-de-sesion",
  view: "join.ejs"
}, "joinPages", function (req, joinPages) {

  return joinPages.returnAll()
});



mvc.controller({
  name: "signup",
  action: "signup",
  path: "/registro-nanny",
  view: "register.ejs"
}, "register", function (req, register) {
  return register.returnAll()
});

mvc.controller({
  name: "signup",
  action: "signup",
  path: "/registro-padres",
  view: "register-padres.ejs"
}, "registerPadres", function (req, registerPadres) {
  return registerPadres.returnAll()
});

mvc.controller({
  name: "createProfile",
  action: "createProfile",
  path: "/crear-perfil-nanny",
  view: "create-profile.ejs"
}, "create", function (req, create) {
  return create.returnAll()
});

mvc.controller({
  name: "profile",
  action: "profile",
  path: "/perfil-nanny",
  view: "profile.ejs"
}, "profile", function (req, profile) {
  return profile.returnAll()
});


mvc.controller({
  name: "profile",
  action: "search",
  path: "/busqueda-de-nanny",
  view: "search.ejs"
}, "search", function (req, search) {
  return search.returnAll()
});



mvc.controller({
  name: "terminos",
  action: "Terminos",
  path: "/terminos-condiciones",
  view: "./terminos/terminos.ejs"
}, "terminos", function (req, terminos) {
  return terminos.returnAll()
});


mvc.controller({
  name: "update",
  action: "Update",
  path: "/editar-nanny",
  view: "update-nanny.ejs"
}, "update", function (req, update) {
  return update.returnAll()
});

mvc.controller({
  name: "recuperar",
  action: "recuperar",
  path: "/recuperar-password",
  view: "recuperar-password.ejs"
}, "rPassword", function (req, rPassword) {
  return rPassword.returnAll()
});
