// APIS 
let { cookie } = plugdo;
$('#hidePassword').hide();
const UrlSendDatosUsers = 'api/send-dataUsers/json';
const UrlDatosSocialNetwork = 'api/send-dataFacebook/json';
const UrlSendDatosFathers = 'api/send-dataFather/json';
const UrlSendDatosPersonal = 'api/send-dataPersonal/json';
const UrlSendReservation = 'api/send-reservation/json';
const UrlSendDatosGenral = 'api/send-general/json';
const UrlSendDisponibilidad = 'api/insert-hour/json';
const UrlSendImages = 'api/save-images/json';
const urlGetdata = 'api/get-data/json';
const UrlFilter = 'api/send-filter/json';
const UrlfilterRange = 'api/filter-range/json';
var UrlEmail = "api/send-email/json";
var sendEmail = '/send-email';
var UrlEmailConfirmation = "/send-confirmation"
var sessionData = cookie.get("dataNanny");
// console.log(sessionData)
// VARIABLES GLOBALES 
var ExistSession = [];
var nombre = "";
var email = "";
var UserNanny = "";
var NameUser = "";
var UserFacebook = "";
var opInit = [];
var form = [];
var datos = [];
var servicesObj = [];
var servicesEspeObj = [];
var serviceaditionalObj = [];
var certifictionObj = [];
var verificationObj = [];
var zonasObj = [];
var userActiveNanny = []
var userActiveGoogle = [];
var userActiveFather = [];
var userActiveFacebook = [];
var imagesP = [];
var imagesID = [];
// RENDER FILE IMAGES
var reader = new FileReader();

// configuration Images Global 
var config = [{
  contentImput: "image-upload-input-wrap",
  idInput: "file-upload-input",
  contentUpload: "file-upload-content",
  viewImages: "file-upload-image",
  titleImages: "image-title",
  idErr: "errMessage",
  templateErr: "",
  nameForm: "imagesPrincipal",
  size: 1024 * 1024,
  validateSize: false,
  validateFormats: true,
  validateSpace: true,
  preview: true,
  useSweetAlert: false,
  useAlertify: true,
}];

var configId = [{
  contentImput: "image-upload-input-wrap-Id",
  idInput: "file-upload-input-Id",
  contentUpload: "file-upload-content-Id",
  viewImages: "file-upload-image-Id",
  titleImages: "image-title-Id",
  idErr: "errMessage-Id",
  templateErr: "",
  nameForm: "imagesId",
  size: 1024 * 1024,
  validateSize: false,
  validateFormats: true,
  validateSpace: true,
  preview: true,
  useSweetAlert: false,
  useAlertify: true,
}];
