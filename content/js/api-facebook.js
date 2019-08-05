window.fbAsyncInit = function () {
	FB.init({
		appId: '1102432019949500',   
		cookie: true,
		xfbml: true,
		version: 'v3.3'
	});

};

function statusChangeCallback(response) {
	if (response.status === 'connected') {
		testAPI();
	} else {
		console.log('Please log ' + 'into this app.')
	}
}

function checkLoginState() {
	FB.getLoginStatus(function (response) {
		statusChangeCallback(response);
	});
}

function facebookLogout() {
	FB.getLoginStatus(function (response) {
		if (response.status === 'connected') {
			FB.logout(function (response) {
				console.log(response)
			});
		}
	});
}

function testAPI() {
	FB.api('/me', function (response) {
		// console.log(response)
		// document.getElementById("message").innerHTML = `Hola ${response.name} deseas Que Guardemos tus datos de <b>Facebook</b> en Nanny 365 ? `;
		InsertDataOfFacebook()
		// $("#facebookModal").modal('show');
	});
}

function InsertDataOfFacebook() {
	FB.api('/me', function (response) {
		validateSessionFacebook(response)
	});
}

function validateSessionFacebook(response) {
	var data = [];
	var hoy = new Date();
	var dd = hoy.getDate();
	var mm = hoy.getMonth() + 1;
	var yyyy = hoy.getFullYear();
	var miembro = dd + '/' + mm + '/' + yyyy;
	data.push({
		name: response.name,
		email: "",
		id: response.id,
		OptionRegister: "Facebook",
		miembro: miembro
	})

	var obj = data[0];
	console.log(obj)
	$.ajax({
		type: "POST",
		url: UrlDatosSocialNetwork,
		timeout: 2000,
		data: obj,
		success: function (data) {

			datosUser = data.result.Database[0].Table.Row[0];
			userActiveFacebook.push({
				id: datosUser[0].id,
				idNetwork: datosUser[0].idSocialNetwork,
				name: response.name
			})
			if (opInit.length === 0) {
				opInit.push({
					id: datosUser[0].id,
					email: response.name
				})
				localStorage.setItem('datos', JSON.stringify(opInit));
			}
			$.ajax({
				type: "POST",
				url: UrlSendReservation,
				timeout: 2000,
				data: {
					id: datosUser[0].id
				},
				success: function (data) {
					facebookLogout();
					datosUser2 = data.result.Database[0].Table.Row[0]
					localStorage.setItem('sessionFacebook', JSON.stringify(userActiveFacebook));
					alertify.set('notifier', 'position', 'top-center');
					alertify.success('Bienvenido  su cuenta    <b>correo : </b>' + `<b>${response.name}</b>`);
					setTimeout(() => {
						location.href = `/crear-perfil-nanny?nanny=${datosUser[0].id}`;
					}, 1000);
				},
				error: function (textStatus, err) {
					console.log(textStatus + "" + err);
				}
			});

		},
		error: function (textStatus, err) {
			console.log(textStatus + "" + err);
		}
	});
}

$(function () {
	$('#startSession').on('click', function () {
		FB.login(function (response) {
			if (response.authResponse) {
				checkLoginState();
			} else {
				console.log('User cancelled login or did not fully authorize.');
			}
		});
	});
});