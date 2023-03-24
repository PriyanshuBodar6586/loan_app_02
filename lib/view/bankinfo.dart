import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';

import 'package:sizer/sizer.dart';

class BankInDetail extends StatefulWidget {
  const BankInDetail({Key? key}) : super(key: key);

  @override
  State<BankInDetail> createState() => _BankInDetailState();
}

class _BankInDetailState extends State<BankInDetail> {
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: appBar(false, "Banks Information"),
      child: backGround(
         SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           scrollDirection: Axis.vertical,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 11.h,),
              Container(
                height: 24.h,
                width: 100.w,
                color: Colors.white.withOpacity(0.5),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GlassmorphicContainer(
                  height: 30.h,
                  width: 100.w,
                  borderRadius: 15,
                  blur: 10,
                  alignment: Alignment.center,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xffffffff).withOpacity(0.1),
                        const Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.5),
                      const Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        data[0]["bank"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          decoration: TextDecoration.none
                        ),
                      ),
                     SizedBox(
                       height: 2.h,
                     ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(" - Please dial from registered mobile number in bank and you will receive an sms.",style: TextStyle(color: Colors.white,fontSize: 17.sp,decoration: TextDecoration.none)),
                      ),
                    ],
                  ),
                ),
              ),
              GlassmorphicContainer(
                height: 14.h,
                width: 100.w,
                borderRadius: 15,
                blur: 10,
                alignment: Alignment.center,
                border: 2,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xffffffff).withOpacity(0.1),
                      const Color(0xFFFFFFFF).withOpacity(0.05),
                    ],
                    stops: const [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.5),
                    const Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Bank Customer Care",style: TextStyle(fontSize: 20.sp,color: Colors.white,decoration: TextDecoration.none), ),
                          ),
                          Text("   ${data[1]["care"]}",style: TextStyle(fontSize: 17.sp,decoration: TextDecoration.none,color: Colors.white),)
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                              text: data[1]["care"].toString()))
                              .then(
                                (value) => Get.snackbar(
                              "Copy",
                              "Bank Number  ${data[1]["care"]}",
                              colorText: Colors.white,
                              barBlur: 25,

                              margin: const EdgeInsets.only(bottom: 50),
                              animationDuration: const Duration(seconds: 2),
                              overlayBlur: 1,
                              snackPosition: SnackPosition.BOTTOM,
                              icon: Icon(
                                Icons.add_alert,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.call,
                          color: Colors.green,
                          size: 60,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 23.h,
                width: 100.w,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
        ),
         ),
      ),
    );
  }
}