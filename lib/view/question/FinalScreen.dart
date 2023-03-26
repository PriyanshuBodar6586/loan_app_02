import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/home_screen.dart';

import 'package:sizer/sizer.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
    middle: const Text("Congratulation",
    style: TextStyle(color: CupertinoColors.white)),
    ),
    child: backGround( SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 22),
                height: 25.h,
                width: 100.w,
                color: Colors.white70),
Image.asset("assets/image/congrats-12.gif"),
            Container(
                margin: const EdgeInsets.only(top: 22),
                height: 15.h,
                width: 100.w,
              child: Text("Congratulation approved Your Loan",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 21.sp,fontWeight: FontWeight.bold,decoration: TextDecoration.none)),
                ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(

                onTap: (){
                  Get.to(Home_screen());
                },
                child:  GlassmorphicContainer(
                    width: 95.w,
                    height: 8.h,
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

                  child: Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w700,letterSpacing: 1,decoration: TextDecoration.none))),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
