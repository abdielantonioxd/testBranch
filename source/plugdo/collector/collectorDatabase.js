var objConnect = global.settings.db;

plugdo.collector("MysqlValidateUsers", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_validateUsers",
  parameter: ["json:post.email", "json:post.password", "json:post.Option", "json:post.miembro"]
});

plugdo.collector("MysqlValidateUsersSocialNetwork", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_socialNetwork",
  parameter: ["json:post.name", "json:post.email", "json:post.id", "json:post.OptionRegister", "json:post.miembro"]
});

plugdo.collector("MysqlValidateFathers", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_validateFathers",
  parameter: ["json:post.nombre", "json:post.telefono", "json:post.email", "json:post.password", "json:post.Option"]
});

plugdo.collector("MysqlSendDataPersonal", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_insertDataPersonal",
  parameter: ["json:post.nombre", "json:post.fechaN", "json:post.provincia", "json:post.distrito", "json:post.identificacion", "json:post.id", "json:post.telefono", "json:post.privateNumber", "json:post.imagesID"]
});

plugdo.collector("MysqlSendReservation", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_insertReservation",
  parameter: ["json:post.id"]
});

plugdo.collector("MysqlSendDataGeneral", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_insertDataGeneral",
  parameter: ["json:post.numExperiencia","json:post.experiencia", "json:post.servicios", "json:post.serviciosEspeciales", "json:post.serviciosAdicionales", "json:post.certificacion", "json:post.verification", "json:post.tarifa", "json:post.zona", "json:post.sobreMi", "json:post.id", "json:post.othersServiceEspe", "json:post.othersServiceAdi"]
});


plugdo.collector("mysqlSendHour", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_insertHour",
  parameter: [
    "json:post.lunes",
    "json:post.lunesCierre",
    "json:post.martes",
    "json:post.martesCierre",
    "json:post.miercoles",
    "json:post.miercolesCierre",
    "json:post.jueves",
    "json:post.juevesCierre",
    "json:post.viernes",
    "json:post.viernesCierre",
    "json:post.sabado",
    "json:post.sabadoCierre",
    "json:post.domingo",
    "json:post.domingoCierre",
    "json:post.id",
  ]
})


plugdo.collector("mysqlSaveImages", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_inserImages",
  parameter: ["json:post.id", "json:post.imagesP"]
});

plugdo.collector("mysqlgetImages", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_getImages",
  parameter: ['json:post.id']
});

plugdo.collector("mysqlGetdataNanny", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_getDataNanny",
  parameter: ['json:post.id']
});

plugdo.collector("mysqlGetNannys", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_selectNannys",
  parameter: []
});

plugdo.collector("mysqlDisponibilidad", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_DisponibilidadNanny",
  parameter: ['json:post.id']
});

plugdo.collector("mysqlSendFilter", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_filterNanny",
  parameter: ['json:post.data', 'json:post.experiencia', 'json:post.option']
  // 'json:post.experienciaTwo','json:post.experienciathree','json:post.experienciafour','json:post.experienciaFive'
});

plugdo.collector("FilterExperience", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_filterExperience",
  parameter: ['json:post.groupMin','json:post.groupMax','json:post.groupEdad','json:post.serv_esp','json:post.tarifaMin','json:post.tarifaMax','json:post.zonas', 'json:post.experiencia', 'json:post.option']
  // 'json:post.experienciaTwo','json:post.experienciathree','json:post.experienciafour','json:post.experienciaFive'
});

plugdo.collector("mysqlSendFilterList", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_filterNannyList",
  parameter: ['json:post.data', 'json:post.experiencia', 'json:post.option']
  // 'json:post.experienciaTwo','json:post.experienciathree','json:post.experienciafour','json:post.experienciaFive'
});

plugdo.collector("mysqlSendFilterRange", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call SP_filterRange",
  parameter: ['json:post.dataOne', 'json:post.dataTwo', 'json:post.experience', 'json:post.option']
});


plugdo.collector("mysqlLastLogin", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_lastLogin",
  parameter: ["json:post.id"]
});


plugdo.collector("mysqlSendEmail", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_recuperarPasword",
  parameter: ["json:post.email", "json:post.password", "json:post.id", "json:post.option", "json:post.active"]
});
