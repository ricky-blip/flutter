import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  //InputText
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  //Obscure
  RxBool isHidden = true.obs;

  //Remember Me
  RxBool rememberMe = false.obs;

  //ButtonLogin
  void login() async {
    //Success Login
    if (emailC.text == "admin@mail.com" && passwordC.text == "admin") {
      final box = GetStorage();
      //Box Get Storage when rememberMe is not check
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      //Remember Me
      if (rememberMe.isTrue) {
        //save data email&password in local memory
        box.write(
          "dataRememberMe",
          {
            "email": emailC.text,
            "password": passwordC.text,
          },
        );
      }
      Get.offAllNamed("/homepages");
    } else {
      //Failed Login
      Get.defaultDialog(
        title: "Error",
        middleText: "Wrong Email and Password",
      );
    }
  }

  //ButtonLogout
  void logout() {
    Get.offAllNamed("/loginpages");
  }
}
