import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/7.getstorage_login_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPages extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());
  //Access GetStorage
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    //Show dataRememberMe from GetStorage
    if (box.read("dataRememberMe") != null) {
      loginC.rememberMe.value = true;
      loginC.emailC.text = box.read("dataRememberMe")["email"];
      loginC.passwordC.text = box.read("dataRememberMe")["password"];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  controller: loginC.emailC,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => TextField(
                    controller: loginC.passwordC,
                    obscureText: loginC.isHidden.value,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () => loginC.isHidden.toggle(),
                        icon: loginC.isHidden.value
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.remove_red_eye_rounded),
                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: loginC.rememberMe.value,
                    onChanged: (value) => {
                      loginC.rememberMe.toggle(),
                    },
                    title: Text("Remember Me"),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    loginC.login();
                  },
                  child: Text("LOGIN"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
