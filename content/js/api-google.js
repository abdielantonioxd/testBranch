
var dataLogin = "";
var exist = false;
function onSignIn() {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId());
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail());
  googleUser.disconnect()
}

function signOut() {
  var auth2 = gapi.auth2.getAuthInstance();
  auth2.signOut().then(function () {
    console.log('User signed out.');
  });
}

function onFailure(error) {
  console.log(error);
}


function onSuccess(googleUser) {
  dataLogin = googleUser.getBasicProfile();
 exist = true
    validateSessionGoogle(dataLogin);
}

function renderButton() {
  gapi.signin2.render('login', {
    'scope': 'profile email',
    'width': 469,
    'height': 40,
    'longtitle': true,
    'theme': 'White',
    'onfailure': onFailure,
    'onSuccess':onSuccess
  });
}

// function getProfile() {
//   gapi.load('auth2', function () {
//     auth2 = gapi.auth2.init({
//       // client_id: '18455256224-gr0f4sbd822mna9hdepiajjcmq3rg2se.apps.googleusercontent.com'
//       client_id: '728368102731-6v5lvi9db6hc68dgcled0bf1s8k6v4c4.apps.googleusercontent.com'
//     });
//     // auth2.attachClickHandler('login', {}, onSuccess, onFailure);
//   });
// }

if(exist == true ){
  console.log(dataLogin)
}
function validateSessionGoogle(dataLogin) {
  var data = [];
  var hoy = new Date();
  var dd = hoy.getDate();
  var mm = hoy.getMonth() + 1;
  var yyyy = hoy.getFullYear();
  var miembro = dd + '/' + mm + '/' + yyyy;
  data.push({
    name: dataLogin.ig,
    email: dataLogin.U3,
    id: dataLogin.Eea,
    miembro: miembro,
    OptionRegister: "Google",
  })
  var obj = data[0];
  $.ajax({
    type: "POST",
    url: UrlDatosSocialNetwork,
    timeout: 2000,
    data: obj,
    success: function (data) {
      signOut();
      datosUser = data.result.Database[0].Table.Row[0];
      userActiveGoogle.push({
        id: datosUser[0].id,
        email: datosUser[0].email,
      })
      if (opInit.length === 0) {
        opInit.push({
          id: datosUser[0].id,
          email: datosUser[0].email
        })
        localStorage.setItem('datos', JSON.stringify(opInit));
      }
      if (datosUser[0].id != undefined) {
        $.ajax({
          type: "POST",
          url: UrlSendReservation,
          timeout: 2000,
          data: {
            id: datosUser[0].id
          },
          success: function (data) {
            datosUser2 = data.result.Database[0].Table.Row[0]
            // signOut();
            setTimeout(() => {
              localStorage.setItem('sessionGoogle', JSON.stringify(userActiveGoogle));
              alertify.set('notifier', 'position', 'top-center');
              alertify.success('Bienvenido su  cuenta    <b>correo : </b>');
              location.href = `/crear-perfil-nanny?nanny=${datosUser[0].id}`;
            }, 1000);
          },
          error: function (textStatus, err) {
            console.log(textStatus + "" + err);
          }
        });
      }
    },
    error: function (textStatus, err) {
      console.log(textStatus + "" + err);
    }
  });
}
