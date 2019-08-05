// APIS 
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
