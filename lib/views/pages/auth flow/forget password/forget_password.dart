import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manaakiwai/constants/colors.dart';
import 'package:manaakiwai/controllers/auth_controller.dart';
import 'package:manaakiwai/utils/size_config.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_textfield.dart';
import '../../../widgets/gradient_background.dart';

class ForgetPassPage extends GetWidget<AuthController> {
  const ForgetPassPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController emailCont = TextEditingController();
    return Scaffold(
      body: GradientBackground(
        isScrollView: true,
          child: Column(
        children: [
          SizedBox(height: SizeConfig.heightMultiplier * 10),
          Text("Forget password".toUpperCase(),
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: SizeConfig.textMultiplier * 3)),
          SizedBox(height: SizeConfig.heightMultiplier * 6),
          //LOGIN TEXTFIELDS

          CustomTextField(
            controller: emailCont,
            hintText: "Email",
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 1),
          //REGISTER AND FORGOT PASSWORD BUTTONS
          SizedBox(
            width: SizeConfig.widthMultiplier * 68,
            child: Text(
                "Enter your email so an reset link will be sent to you on your email soon.",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 16),

          CustomButton(
            title: "Send link",
            press: () {
              controller.passResetEmail(emailCont.text, context);
            },
            w: SizeConfig.widthMultiplier * 60,
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Go back",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w600)),
          ),
         

      
        ],
      )),
    );
  }
}
