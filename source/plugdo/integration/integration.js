plugdo.integration("send-dataUsers", (message, send) => {
  let response = {};
  plugdo.collect("MysqlValidateUsers").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});

plugdo.integration("send-dataFacebook", (message, send) => {
  let response = {};
  plugdo.collect("MysqlValidateUsersSocialNetwork").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});

plugdo.integration("send-dataFather", (message, send) => {
  let response = {};
  plugdo.collect("MysqlValidateFathers").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});

plugdo.integration("send-dataPersonal", (message, send) => {
  let response = {};
  plugdo.collect("MysqlSendDataPersonal").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});

plugdo.integration("send-reservation", (message, send) => {
  let response = {};
  plugdo.collect("MysqlSendReservation").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});


plugdo.integration("send-general", (message, send) => {
  let response = {};
  plugdo.collect("MysqlSendDataGeneral").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});

plugdo.integration("insert-hour", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlSendHour").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})



plugdo.integration("save-images", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlSaveImages").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})

plugdo.integration("get-images", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlgetImages").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})


plugdo.integration("get-data", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlGetdataNanny").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})



plugdo.integration("get-nannys", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlGetNannys").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})



plugdo.integration("get-disponibilidad", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlDisponibilidad").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})


plugdo.integration("last-login", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlLastLogin").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})


plugdo.integration("send-filter", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlSendFilter").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})

plugdo.integration("filter-range", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlSendFilterRange").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})

plugdo.integration("send-email", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlSendEmail").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})

plugdo.integration("send-Autenticate", (message, send) => {
  let response = {};
  // console.log(message)
  plugdo.collect("mysqlSendEmailValidation").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
})