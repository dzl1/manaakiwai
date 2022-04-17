import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/widgets/show_loading.dart';
import 'package:manaakiwai/views/widgets/upper_gradient_container.dart';
import '../../../../constants/icons.dart';
import '../../../../controllers/auth_controller.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/gradient_background.dart';
import '../../../widgets/signup_custom_textfield.dart';
import '../login/components/social_buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController userNameCont = TextEditingController();
    TextEditingController emailCont = TextEditingController();
    TextEditingController passwordCont = TextEditingController();
    TextEditingController nameCont = TextEditingController();
    TextEditingController contactCont = TextEditingController();
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
                      UpperGradientContainer(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: IconButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: kPrimaryColor,
                                      size: 30,
                                    )),
                              ),
                              Text("Register".toUpperCase(),
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: SizeConfig.textMultiplier * 3)),
                              SizedBox(height: SizeConfig.heightMultiplier * 3)
                            ],
                          ),
                          height: SizeConfig.heightMultiplier * 20),

                      SizedBox(height: SizeConfig.heightMultiplier * 2),
                      //LOGIN TEXTFIELDS
                      SignUpCustomTextField(
                        controller: nameCont,
                        hintText: "Name",
                      ),

                      SignUpCustomTextField(
                        controller: emailCont,
                        hintText: "Email",
                      ),
                      SignUpCustomTextField(
                        controller: userNameCont,
                        hintText: "Username",
                      ),

                      SignUpCustomTextField(
                        controller: contactCont,
                        hintText: "Contact number",
                      ),
                      SignUpCustomTextField(
                        controller: passwordCont,
                        hintText: "Password",
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 2),
                      CustomButton(
                        w: SizeConfig.widthMultiplier * 70,
                        title: "Signup",
                        press: () {
                          if (nameCont.text.isNotEmpty &&
                              emailCont.text.isNotEmpty &&
                              userNameCont.text.isNotEmpty &&
                              contactCont.text.isNotEmpty &&
                              passwordCont.text.isNotEmpty) {
                            auth.creatAccountWithEmail(
                                emailCont.text,
                                passwordCont.text,
                                nameCont.text,
                                userNameCont.text,
                                contactCont.text);
                          }
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 10),
                        child: Divider(
                            height: SizeConfig.heightMultiplier * 5,
                            thickness: SizeConfig.heightMultiplier * 0.5,
                            color: Colors.white),
                      ),
                      Text("OR SIGN IN WITH",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: SizeConfig.textMultiplier * 1.8,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: SizeConfig.heightMultiplier * 2),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 70,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              SocialLoginButton(press:(){},
                                  title: "Facebook", icon: facebook),
                              SocialLoginButton(press:(){},title: "MYMSD", icon: facebook),
                              SocialLoginButton(press:(){},title: "Google", icon: gmail),
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
