'use strict'
window.upload = new uploadImagesServer({
  Module: "upload-image"
})

window.deleteFile = new deleteFileInServer({
  Module: "delete-image",
  msgErrActive: true,
  useSweetAlert: false,
  useAlertify: false,
  useConsole: true
})

/* validation Images Principal */
function validateUpload(input) {
  config.push({
    data: input
  });
  upload.registerDataForm(config);

  imagesP.push({
    name: document.getElementById(config[0].idInput).files[0].name
  })
  document.getElementById("chamgeImages").src = "/public/images/" + document.getElementById(config[0].idInput).files[0].name;
}

function chooseAnotherImages() {
  upload.chooseAnother(config);
}

/* validation ImagesID */
function validateUploadId(input) {
  configId.push({
    data: input
  });

  upload.registerDataForm(configId);
  imagesID.push({
    name: document.getElementById(configId[0].idInput).files[0].name
  })
}

function chooseAnotherImagesId() {
  upload.chooseAnother(configId);
}

// save Images in the server 
function uploadImagesServ() {
  upload.saveImages({
    url: '/upload'
  });
}

// delete Images in the server 
function deleteFiles() {
  deleteFile.deleteImages({
    name: '863587.jpg',
    Url: "/delete"
  })
}


