import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/FinalScreen.dart';
import 'package:sizer/sizer.dart';

class Four extends StatefulWidget {
  const Four({Key? key}) : super(key: key);

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle: const Text("Aadhaar Card",
            style: TextStyle(color: CupertinoColors.white)),
      ),
      child: backGround(
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 11.h,
              ),
              Container(
                height: 25.h,
                width: 100.w,
                color: Colors.white70,
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GlassmorphicContainer(
                    height: 8.h,
                    width: 100.w,
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
                    child: Center(child: Text(" You Have Aadhaar card?",style: TextStyle(color: Colors.white,fontSize: 19.sp,decoration: TextDecoration.none)))
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(FinalScreen());
                    },
                    child: GlassmorphicContainer(
                        height: 8.h,
                        width: 30.w,
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
                        child: Center(child: Text(" Yes ✅ ",style: TextStyle(color: Colors.white,fontSize: 20.sp,decoration: TextDecoration.none)))
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.snackbar(
                        "Alert",
                        "You can proceed only if you have the Aadhaar Card...",
                        colorText: Colors.white,
                        barBlur: 25,
                        backgroundColor:  Colors.transparent,
                        margin: const EdgeInsets.only(bottom: 50),
                        animationDuration: const Duration(seconds: 2),
                        overlayBlur: 8,
                        snackPosition: SnackPosition.BOTTOM,
                        icon: Icon(
                          Icons.add_alert,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      );
                    },
                    child: GlassmorphicContainer(
                        height: 8.h,
                        width: 30.w,
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
                        child: Center(child: Text(" No ❌ ",style: TextStyle(color: Colors.white,fontSize: 20.sp,decoration: TextDecoration.none)))
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 25.h,
                width: 100.w,
                color: Colors.white70,
              ),

            ],
          ),
        ),
      ),
    );
  }

}
