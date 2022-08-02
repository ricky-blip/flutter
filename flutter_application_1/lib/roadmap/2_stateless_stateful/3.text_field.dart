// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  // NOTE hide/unhide password
  bool isHidden = true;
  // NOTE get email and password
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            // textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              prefixIcon: Icon(Icons.mail),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: passwordC,
            autocorrect: false,
            obscureText: isHidden,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: "Password",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              prefixIcon: Icon(Icons.key),
              // NOTE access hide/unhide with icon
              suffixIcon: IconButton(
                onPressed: () {
                  if (isHidden == true) {
                    isHidden = false;
                  } else {
                    isHidden = true;
                  }
                  setState(() {});
                },
                icon: Icon(Icons.remove_red_eye),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              //access how to get data email and password
              print(
                  "Login with email ${emailC.text} & password ${passwordC.text}");
            },
            child: Text("LOGIN"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red[900],
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
