import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fps/controller/controller/authController/auth_controller.dart';
import 'package:fps/view/screens/navebar_screen/navbar.dart';
import 'package:fps/view/screens/screen%20_login/widgets/password.dart';
import 'package:fps/view/screens/screen_forgot/forgot_screen.dart';
import 'package:fps/view/screens/screen_register/resgister.dart';
import 'package:fps/view/screens/screen_register/widgets/custom_textform.dart';
import 'package:fps/view/screens/screen_register/widgets/custombutton.dart';
import 'package:fps/view/style/style.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _emailController = TextEditingController();
  final _passwodController = TextEditingController();
  final _fomkey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 100.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign in",
                style: TextStyle(fontWeight: FontWeight.bold, color: grey),
              ),
              Container(
                height: 180.h,
                width: 200.w,
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
                "Hello there, Login to Continue",
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
              h20,

              PasswordForm(),

              h30,
              GestureDetector(
                onTap: () {
                  Get.to(ForgotScreen());
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: mainred, fontWeight: FontWeight.bold),
                ),
              ),
              //    h25,
              // RichText(
              //   text: TextSpan(
              //     text: "Don't Have any Account ? ",
              //     style: const TextStyle(
              //       color: grey,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: ' Register',
              //         style: const TextStyle(
              //             color: mainred, fontWeight: FontWeight.bold),
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = () => Get.to(
              //                 RegisteScreen(),
              //               ),
              //       )
              //     ],
              //   ),
              // ),
              h30,
              CustomButton(
                  textColor: white,
                  btncolor: mainred,
                  onPressed: () {
                    Get.to(NavBarScreen());
                    // bool isValid = _fomkey.currentState!.validate();
                    // if (isValid) {

                    // }
                  },
                  title: 'Login to access')
            ],
          ),
        ),
      ),
    );
  }

//PASSWORD============================================
  // ClayContainer passwordForm() {
  //   return
  //   // GestureDetector(
  //   //   onTap: () {

  //   //   },
  //  //   child:

  //       child: CustomPassword(
  //         suffixIcon: Icon(Icons.visibility),
  //       //   suffixIcon: Obx(
  //       //  () {
  //       //       return IconButton(onPressed: () {
  //       //         authController.isvisible.value=!authController.isvisible.value;

  //       //       }, icon:authController.isvisible.value? Icon(Icons.visibility):Icon(Icons.visibility_off));
  //       //     }
  //         // ),
  //         controller: _passwodController,
  //         maxline: 1,
  //         textinputType: TextInputType.text,
  //         title: 'Password',
  //         validator: (value) {
  //           // if (value!.isEmpty) {
  //           //   return "Password minimum  1 length";
  //           // } else if (!RegExp(r'(^[a-z A-Z]+$)').hasMatch(value)) {
  //           //   return 'valid Passsworsd';
  //           // } else {
  //           //   return null;
  //           // }
  //         },
  //       ),

  //   );
  // }

  //EMAIL===========================================================

  ClayContainer emailForm() {
    return ClayContainer(
      color: white,
      borderRadius: 50.r,
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
