import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fps/view/screens/screen%20_login/login_screen.dart';
import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';

class RegisteScreen extends StatelessWidget {
  RegisteScreen({super.key});
  final _emailController = TextEditingController();
  final _passwodController = TextEditingController();
  final _fomkey = GlobalKey<FormState>();
  final h20 = const SizedBox(
    height: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              const Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, color: grey),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/3.png'),
                  ),
                ),
              ),
              h20,
              Text(
                "Welcome",
                style: welcomeText,
              ),
              h20,
              const Text(
                "Hello there, Sign in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: grey,
                ),
              ),
              h20,
              Form(
                key: _fomkey,
                child: Column(
                  children: [
                    emailForm(),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              passwordForm(),
              h20,
              h20,
              RichText(
                text: TextSpan(
                  text: "You Have Already an Account ? ",
                  style: const TextStyle(color: black, fontSize: 18),
                  children: [
                    TextSpan(
                        text: ' Login',
                        style: const TextStyle(color: blue, fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(LoginScreen()))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  btncolor: mainred,
                  textColor: white,
                  onPressed: () {
                    Get.to(
                      LoginScreen(),
                    );
                    // bool isValid = _fomkey.currentState!.validate();
                    // if (isValid) {
                    //   Get.to(
                    //     LoginScreen(),
                    //   );
                    // }
                  },
                  title: 'Register')
            ],
          ),
        ),
      ),
    );
  }

//PASSWORD============================================
  ClayContainer passwordForm() {
    return ClayContainer(
      color: white,
      borderRadius: 50,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: CustomTextForm(
        controller: _passwodController,
        maxline: 1,
        textinputType: TextInputType.text,
        title: 'Password',
        validator: (value) {
          // if (value!.isEmpty) {
          //   return "Password minimum  1 length";
          // } else if (!RegExp(r'(^[a-z A-Z]+$)').hasMatch(value)) {
          //   return 'valid Passsworsd';
          // } else {
          //   return null;
          // }
        },
      ),
    );
  }

  //EMAIL===========================================================

  ClayContainer emailForm() {
    return ClayContainer(
      color: white,
      borderRadius: 50,
      depth: 40,
      parentColor: white,
      spread: 2,
      child: CustomTextForm(
        controller: _emailController,
        maxline: 1,
        textinputType: TextInputType.emailAddress,
        title: 'Email Address',
        validator: (value) {
          // if (value == null) {
          //   return "Required Field";
          // } else if (!RegExp(
          //         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          //     .hasMatch(value)) {
          //   return "Enter a valid email";
          // } else {
          //   return null;
          // }
        },
      ),
    );
  }
}
