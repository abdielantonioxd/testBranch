const setting = {
  dev: {
    db: {
      user: "root",
      password: "19971997",
      host: "localhost",
      database: "nanny365"
    }
  },
  prod: {
    db: {
      user: "nanny365",
      password: "i+a5.CDC",
      host: "nanny365.ci3dz28ecn2n.us-west-2.rds.amazonaws.com",
      database: "nanny365"
    },
    security: {
      rateLimit: {
        active: true,
        period: 1,
        limit: 1500
      },
      header: {
        active: true
      },
      origin: {
        active: true,
        domains: ['https://dev.nanny365.app','http://dev.nanny365.app']
      }
    }
  }
}

exports.settings = function () {
  return setting;
};