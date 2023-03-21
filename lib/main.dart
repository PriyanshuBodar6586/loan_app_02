
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_app_02/view/home_screen.dart';
import 'package:sizer/sizer.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,

  ]).then((value) => runApp(

    Sizer(
      builder: (context, orientation, deviceType) {
        return  GetCupertinoApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (contest) =>Home_screen(),
          },
        );
      },
    ),
  ),
  );
}
