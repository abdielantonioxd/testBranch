module.exports = {
  apps: [{
    name: "dev.nanny365.app",
    script: "./server.js",
    watch: false,
    env: {
      "PLUGDO_GLOBAL_ENV": "prod",
      "PORT": 3010
    }
  }]
}