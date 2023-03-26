import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/home_screen.dart';
import 'package:lottie/lottie.dart';

import 'package:sizer/sizer.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  late StreamSubscription subscription;
  ValueNotifier<bool> isDeviceConnected = ValueNotifier(false);
  ValueNotifier<bool> isAlertSet = ValueNotifier(false);

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xff1A1B30),


       child:  Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  "assets/image/135368-3d-bank-vault (1).json",
                ),
              ],
            ),
            GestureDetector(

              onTap: () {
                if (isDeviceConnected.value == false) {
                  dialog();
                } else {
                  Get.to(Home_screen());
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GlassmorphicContainer(
                  width: 100.w,
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
                  child: Center(
                    child: Text("Get Started",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25.sp,
                          decoration: TextDecoration.none
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),

    );
  }

  getConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) async {
        isDeviceConnected.value =
            (await InternetConnectionChecker().hasConnection);
        if (isDeviceConnected.value == false && isAlertSet.value == false) {
          dialog();
          isAlertSet.value = true;
        } else {
          // openAds();
        }
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  dialog() => Get.defaultDialog(
        barrierDismissible: false,
        backgroundColor: const Color(0xFFffffff),
        title: "No Internet",
        titleStyle: const TextStyle(color: Colors.black),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(const StadiumBorder()),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFFFFFFFF))),
            onPressed: () async {
              Get.back();
              isAlertSet.value = false;
              isDeviceConnected.value =
                  await InternetConnectionChecker().hasConnection;
              if (!isDeviceConnected.value) {
                dialog();
                isAlertSet.value = true;
              }
            },
            child: const Text(
              "Retry",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
        content: SizedBox(
          height: 30.h,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/image/internet.png'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        "Check Your Data Connection \n Connect Internet & Try Again...",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
