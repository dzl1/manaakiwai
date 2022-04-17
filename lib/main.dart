import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:manaakiwai/bindings/bindings.dart';
import 'package:manaakiwai/utils/size_config.dart';
import 'package:manaakiwai/views/pages/splash/splash.dart';

void main() async{
   //BISMILLAH
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              initialBinding: AuthBindings(),
              theme: ThemeData(
                fontFamily: 'Montserrat',
              ),
              debugShowCheckedModeBanner: false,             
              home:  SplashPage(),
            );
          },
        );
      },
    );
  }}