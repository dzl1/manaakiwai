import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/constants/icons.dart';
import 'package:manaakiwai/controllers/auth_controller.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/pages/auth%20flow/forget%20password/forget_password.dart';
import 'package:manaakiwai/views/pages/home/home.dart';
import 'package:manaakiwai/views/widgets/show_loading.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/gradient_background.dart';
import '../signup/signup.dart';
import 'components/social_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController emailCont = TextEditingController();
    TextEditingController passwordCont = TextEditingController();
    return Scaffold(
      body: GetX<AuthController>(
          init: Get.put<AuthController>(AuthController()),
          builder: (AuthController auth) {
            return ShowLoading(
              inAsyncCall: auth.isLoading.value,
              child: GradientBackground(
                  isScrollView: true,
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.heightMultiplier * 20),
                      Text("LOGIN",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: SizeConfig.textMultiplier * 3)),
                      SizedBox(height: SizeConfig.heightMultiplier * 6),
                      //LOGIN TEXTFIELDS
                      CustomTextField(
                        controller: emailCont,
                        hintText: "Email",
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 3),
                      CustomTextField(
                        controller: passwordCont,
                        hintText: "Password",
                      ),
                      //REGISTER AND FORGOT PASSWORD BUTTONS
                      SizedBox(
                          width: SizeConfig.widthMultiplier * 72,
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => const SignUpPage(),
                                        transition: Transition.leftToRight);
                                  },
                                  child: Text("Register",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.8,
                                          fontWeight: FontWeight.w500))),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => const ForgetPassPage(),
                                        transition: Transition.rightToLeft);
                                  },
                                  child: Text("Forgot password?",
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.8,
                                          fontWeight: FontWeight.w500)))
                            ],
                          )),
                      SizedBox(height: SizeConfig.heightMultiplier * 6),
                      //LOGIN BUTTONS
                      CustomButton(
                        w: SizeConfig.widthMultiplier * 60,
                        title: "Login",
                        press: () {
                          auth.login(emailCont.text, passwordCont.text);
                        },
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 6),
                      //SOCIAL LOGIN BUTTONS
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 70,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              SocialLoginButton(press:(){},
                                  title: "Facebook", icon: facebook),
                              SocialLoginButton(press:(){},title: "MYMSD", icon: facebook),
                              SocialLoginButton(press:(){
                                auth.onGoogleSignIn();
                              },title: "Google", icon: gmail),
                              SocialLoginButton(press:(){},
                                  title: "Twitter", icon: twitter),
                            ]),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
