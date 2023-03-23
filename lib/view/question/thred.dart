import 'package:flutter/cupertino.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:sizer/sizer.dart';

class Thred_Screen extends StatefulWidget {
  const Thred_Screen({Key? key}) : super(key: key);

  @override
  State<Thred_Screen> createState() => _Thred_ScreenState();
}

class _Thred_ScreenState extends State<Thred_Screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle: const Text("Pan Card",
            style: TextStyle(color: CupertinoColors.white)),
      ),
      child: backGround(
        Column(
          children: [
          GlassmorphicContainer(
          width: 15.h,
          height: 20.h,
          borderRadius: 20,
          blur: 10,
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffffffff).withOpacity(0.1),
                Color(0xFFFFFFFF).withOpacity(0.05),
              ],
              stops: const [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Color((0xFFFFFFFF)).withOpacity(0.5),
            ],
          ),
          child: null
        ),

          ],
        ),
      ),
    );
  }
}
