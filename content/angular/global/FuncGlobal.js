UserNanny = localStorage.getItem('sessionNanny');
UserFacebook = localStorage.getItem('sessionFacebook');
var UserGoogle = localStorage.getItem('sessionGoogle');
var UserFather = localStorage.getItem('sessionFather');
var ExistSession = localStorage.getItem('datos');
var NameUser = JSON.parse(UserNanny)
var loginNanny;
if (UserNanny != null) {
  sesionActive = true;

logoutSesionInteracting()
}
function logoutSesionInteracting() {
  var limitTime = 10 * 60000;
  var t;
  window.onload = resetTimer;
  // DOM Events
  document.onmousemove = resetTimer;
  document.onkeypress = resetTimer;
  function logout() {
    localStorage.clear();
    alertify.set('notifier', 'position', 'top-left');
    alertify.notify('se agoto el tiempo de inactividad, vuelva a ingresar su session ');
    setTimeout(() => {
      window.location.reload();
    }, 2000)
  }

  function resetTimer() {
    clearTimeout(t);
    t = setTimeout(logout, limitTime)
  }
}



/* =========================================================*/
//          CALCULO DE CARACTERES TEXTAREA
/*========================================================== */
$('#submit-id-submit').prop('disabled', true);
function countCharsTextarea(obj) {
  var maxLength = 400;
  var strLength = obj.value.length;
  var charRemain = (maxLength - strLength);
  if (strLength == maxLength) {
    document.getElementById("textTarea").innerHTML = `Acerca de mi <b> (Máximo 400 caracteres)</b>
    <span style="color: red;">Excediste el limite de caracteres ${maxLength}  </span>`;
  } else {
    document.getElementById("textTarea").innerHTML = `Acerca de mi <b>(Máximo 400 caracteres)</b> caracteres restantes ${charRemain}`;
  }
}


function countCharsPassword(obj) {
  var minLength = 8;
  var strLength = obj.value.length;
 var testValue =  obj.value;
  // var strongRegex =  new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
  var strongRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{8,})");
  var pass = document.getElementById('password').value;
    if(strongRegex.test(testValue) ) {
      document.getElementById("labelB").innerHTML = `<b class="text-success">(Aceptable)</b> `;

        $('#submit-id-submit').prop('disabled', false);
    // } else if(mediumRegex.test(testValue)) {
    //   document.getElementById("labelB").innerHTML = `<b class="text-warning">(Media)</b> `;
    //   $('#submit-id-submit').prop('disabled', false);
    } else {
      document.getElementById("labelB").innerHTML = `<b> (Máximo 12 caracteres)</b>
       <span style="color: red;">Tu contraseña es muy débil,debe contener Mayúsculas, Minúsculas y carácteres</span>`;
       $('#submit-id-submit').prop('disabled', true);
    }
}

function viewPassword(op) {
  if (op == 'view') {
    var password = document.getElementById('password');
    password.setAttribute("type", "text");
    $('#hidePassword').show();
    $('#viewPassword').hide();
  } else {
    var password = document.getElementById('password');
    password.setAttribute("type", "password");
    $('#hidePassword').hide();
    $('#viewPassword').show();
  }
}

function countCharsOthers(obj) {
  var maxLength = 30;
  var strLength = obj.value.length;
  var charRemain = (maxLength - strLength);
  if (strLength == maxLength) {
    document.getElementById("serviceOthers").innerHTML = `<b> (Máximo 30 caracteres)</b>
    <span style="color: red;">Excediste el limite de caracteres ${maxLength}  </span>`;
  } else {
    document.getElementById("serviceOthers").innerHTML = `<b> (Máximo 30 caracteres)</b> caracteres restantes ${charRemain}`;
  }
}

function countCharsOthersAdi(obj) {
  var maxLength = 30;
  var strLength = obj.value.length;
  var charRemain = (maxLength - strLength);
  if (strLength == maxLength) {
    document.getElementById("serviceOthersAdi").innerHTML = `<b> (Máximo 30 caracteres)</b>
    <span style="color: red;">Excediste el limite de caracteres ${maxLength}  </span>`;
  } else {
    document.getElementById("serviceOthersAdi").innerHTML = `<b> (Máximo 30 caracteres)</b> caracteres restantes ${charRemain}`;
  }
}
