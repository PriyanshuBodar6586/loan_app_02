
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_app_02/view/home_screen.dart';
import 'package:loan_app_02/view/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,

  ]).then((value) => runApp(

    Sizer(
      builder: (context, orientation, deviceType) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (contest) =>splash_screen(),
          },
        );
      },
    ),
  ),
  );
}
