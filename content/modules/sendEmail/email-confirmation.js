const {
  Router
} = require('express');
const sendconfirmation = new Router();
var nodemailer = require('nodemailer');
const path = require('path');
sendconfirmation.post('/send-confirmation', function (req, res) {
  var body = req.body;
  let email = body.email
  async function main() {
    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com", // hostname
      secureConnection: false,
      port: 465,
      auth: {
        user: 'nanny365pm@gmail.com',
        pass: 'i+a5.CDC',
      }
    });
    let mailOptions = {
      from: 'info@nanny365.app',
      to: `${email}`,
      subject: `Bienvenida a Nanny365`,
      text: 'Bienvenida a nanny365',
      html: { path: 'content/template/index.html' }
    };
    let info = transporter.sendMail(mailOptions)
    console.log("Message sent: %s", info.messageId);
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
  }
  main().catch(console.error);
  res.statusCode = 400
  res.end()
})
module.exports = sendconfirmation;