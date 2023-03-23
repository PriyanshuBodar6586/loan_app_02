import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/thred.dart';
import 'package:sizer/sizer.dart';

class Second_sscreen extends StatefulWidget {
  const Second_sscreen({Key? key}) : super(key: key);

  @override
  State<Second_sscreen> createState() => _Second_sscreenState();
}

class _Second_sscreenState extends State<Second_sscreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle: const Text("Payment Method",
            style: TextStyle(color: CupertinoColors.white)),
      ),
      child: backGround(
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 9.h),
           Container(
             height: 20.h,
             color: Colors.white60,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               _menuItem("assets/image/cash.png"),
               _menuItem("assets/image/cheque.png"),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _menuItem("assets/image/bank.png"),
                _menuItem("assets/image/online.png"),
              ],
            ),
            Container(
              height: 20.h,
              color: Colors.white60,
            ),
          ],
        ),
      ),
    );
  }
 _menuItem(String image){
    return GestureDetector(
    onTap: (){
      Get.to(Thred_Screen());
    },
      child: GlassmorphicContainer(
          height: 130.sp,
          width: 130.sp,
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
        child: Image.asset(image,fit: BoxFit.cover),
      ),
    );
  }
}
