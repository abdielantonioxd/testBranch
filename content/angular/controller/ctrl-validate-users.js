app.controller('ctrl-validate-session', ['$scope', 'Dataservice', function ($scope, Dataservice) {
  $scope.sessionActive = true;
  $scope.sessionNanny = true;
  $scope.sessionFacebook = true;
  $scope.sessionGoogle = true;
  $scope.UserActiveNanny = JSON.parse(UserNanny);
  $scope.UserActiveFacebook = JSON.parse(UserFacebook);
  $scope.UserActiveGoogle = JSON.parse(UserGoogle);
  $scope.UserActiveFather = JSON.parse(UserFather);

  function userExist() {
    if ($scope.UserActiveNanny != null) {
      $scope.email = $scope.UserActiveNanny[0].email;
      $scope.sessionActive = false;
      $scope.sessionNanny = false;
      $scope.sessionFacebook = true;
      if (opInit.length === 0) {
        opInit.push({
          id: $scope.UserActiveNanny[0].id,
          email: $scope.UserActiveNanny[0].email
        })

        localStorage.setItem('datos', JSON.stringify(opInit));
        $scope.linkCreateProfile = opInit[0].id
      }
      // console.log(opInit)
    } else {
      // console.log('no session NANNY ')
    }
  }

  // function userExistFather() {
  //   if ($scope.UserActiveFather != null) {
  //     $scope.email = $scope.UserActiveFather[0].email;
  //     $scope.sessionActive = false;
  //     $scope.sessionNanny = false;
  //     if (opInit.length === 0) {
  //       opInit.push({
  //         id: $scope.UserActiveFather[0].id,
  //         email: $scope.UserActiveFather[0].email
  //       })
  //     }
  //   } else {
  //     console.log('no session FATHER ')
  //   }
  // }

  function userExistFacebook() {
    if ($scope.UserActiveFacebook != null) {
      $scope.email = $scope.UserActiveFacebook[0].name;
      $scope.sessionActive = false;
      $scope.sessionNanny = true;
      $scope.sessionFacebook = false;
      if (opInit.length === 0) {
        opInit.push({
          id: $scope.UserActiveFacebook[0].id,
          email: $scope.UserActiveFacebook[0].name
        })
        localStorage.setItem('datos', JSON.stringify(opInit));
        $scope.linkCreateProfile = opInit[0].id
      }

    } else {
      // console.log('no session FACEBBOK')
    }
  }

  function userExistGoogle() {
    if ($scope.UserActiveGoogle != null) {
      $scope.email = $scope.UserActiveGoogle[0].email;
      $scope.sessionActive = false;
      $scope.sessionNanny = true;
      $scope.sessionFacebook = true;
      $scope.sessionGoogle = false;
      if (opInit.length === 0) {
        opInit.push({
          id: $scope.UserActiveGoogle[0].id,
          email: $scope.UserActiveGoogle[0].email
        })
        localStorage.setItem('datos', JSON.stringify(opInit));
        $scope.linkCreateProfile = opInit[0].id
      }
    } else {
      // https://mail.google.com/mail/u/0/?logout&hl=en
      // console.log('no session GOOGLE')
    }
  }
  $scope.closeSession = function (op) {
    if (op == "google") {
      localStorage.clear();
      setTimeout(() => {
        location.href = "/inicio-de-sesion"
      }, 2000);
    } else {
      if (op == "facebook") {
        localStorage.clear();
        setTimeout(() => {
          location.href = "/inicio-de-sesion"
        }, 2000);
      } else {
        localStorage.clear();
        location.href = "/inicio-de-sesion"
      }
    }

  
  }

  userExist();
  userExistFacebook();
  userExistGoogle();
  // userExistFather()
}])