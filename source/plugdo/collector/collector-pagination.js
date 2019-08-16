var objConnect = global.settings.db;

plugdo.collector("countNanny", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_countDatabse ()",
  parameter: []
});

plugdo.collector("loadNanny", {
  type: "db",
  action: "mysql",
  server: objConnect,
  queryType: "stored-procedure",
  query: "call  SP_paginationNanny",
  parameter: ['json:post.start','json:post.limit']
});
