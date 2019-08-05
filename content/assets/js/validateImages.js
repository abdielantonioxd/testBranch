$("#saveImages").hide()
$("#imagesOne").show()
$("#preview").hide()

function showImage() {
  $('.Save').show()
  $('.EditImage').show()
  $('.messageEdit').show()
}

function hideImage() {
  $('.Save').hide()
  $('.EditImage').hide()
  $('.messageEdit').hide()
}

function imgFileP() {
  showImage();
  $("#preview").show()
  reader.readAsDataURL(document.getElementById("file-upload").files[0])
  reader.onload = function () {
    let preview = document.getElementById('preview'),
      image = document.createElement('img');
    image.setAttribute("class", 'w-75 img-thumbnail mt-2');
    image.src = reader.result;
    preview.innerHTML = '';
    preview.append(image);
  };
  var imagesName = document.getElementById("file-upload").files[0].name;
  innerImages = document.getElementById("namefile").innerHTML = imagesName;
  imagesID.push({
    name: document.getElementById("file-upload").files[0].name
  })
}

function saveImagesInServer(op) {
  switch (op) {
    case "yes":
      hideImage();
      saveImages("P")
      break;
    case "no":
      $("#preview").hide()
      document.getElementById('preview').innerHTML = ""
      imagesP = [];
      hideImage();
      innerImages = document.getElementById("namefile").innerHTML = " "
      break;
    case "TwoTrue":
      hideImage()
      $("#imagesTwo").show()
      $("#imagesOne").show()
      saveImages("Two")
      break;
    case "TwoFalse":
      hideImage();
      innerImages = document.getElementById("namefileTwo").innerHTML = " "
      break;
    default:
      break;
  }
}

/*
  #####################################################################################
  #                      function of input file for images  table 3                   #
  #####################################################################################
 */


function imgFileAlTwo() {
  showImage()
  reader.readAsDataURL(document.getElementById("file-uploadTwo").files[0])
  reader.onload = function () {
    let preview = document.getElementById('previewThree'),
      image = document.createElement('img');
    image.setAttribute("class", 'w-75  img-thumbnail');
    image.src = reader.result;
    preview.innerHTML = '';
    preview.append(image);
  };
  var img = document.getElementById("file-uploadTwo").files[0];
  imageslocalTwo = img.name;
  imagesP.push({
    name: document.getElementById("file-uploadTwo").files[0].name
  })
}


function saveImages(op) {
  switch (op) {
    case "P":
      var formData = new FormData(document.getElementById("imagesP"));
      formData.append("dato", "valor");
      SaveImagesInTheServer(formData);
      setTimeout(() => {
        $('#modalImages').modal('show');
      }, 1000);
      break;
    case "Two":
      var formData = new FormData(document.getElementById("imagesTwo"));
      formData.append("dato", "valor");
      SaveImagesInTheServer(formData);
      // $('#getImages').hide();
      document.getElementById("chamgeImages").src = "/public/images/" + document.getElementById("file-uploadTwo").files[0].name;
      alertify.set('notifier', 'position', 'top-right');
      alertify.success("Por favor pulse Guardar Datos para actualizar su perfil");
      break;
    default:
      break;
  }
  function SaveImagesInTheServer(formData) {
    $.ajax({
      url: "/images/upload",
      type: "post",
      dataType: "html",
      data: formData,
      cache: false,
      contentType: false,
      processData: false,
      success: function (data) {
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('La imagen se Guardo correctamente');
      }
    })

  }
}

hideImage()


