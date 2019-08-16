plugdo.integration("count-nannys", (message, send) => {
  let response = {};
  plugdo.collect("countNanny").get(message, (data, err) => {
    if (err) {
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});

plugdo.integration("load-nannys", (message, send) => {
  let response = {};
  plugdo.collect("loadNanny").get(message, (data, err) => {
    if (err) {
     
      send({}, err);
    } else {
      response.result = data;
      send(response);
    }
  });
});