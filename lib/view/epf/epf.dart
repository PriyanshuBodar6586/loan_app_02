import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/epf/e-passbok.dart';
import 'package:loan_app_02/view/epf/international.dart';
import 'package:loan_app_02/view/epf/kyc.dart';
import 'package:loan_app_02/view/epf/online.dart';
import 'package:loan_app_02/view/epf/personal.dart';
import 'package:loan_app_02/view/epf/shaam.dart';

import 'package:sizer/sizer.dart';

import 'ecr.dart';
import 'establishment.dart';

// ignore: camel_case_types
class Epf extends StatefulWidget {
  const Epf({Key? key}) : super(key: key);

  @override
  State<Epf> createState() => _EpfState();
}

// ignore: camel_case_types
class _EpfState extends State<Epf> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle: const Text("EPF Service",
            style: TextStyle(color: CupertinoColors.white)),
      ),
      child: backGround(
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 25.h,
                width: 100.w,
                color: Colors.white70,
              ),
              _menuItem(
                  () {Get.to(const Establishment());},
                  Colors.black,
                  "Establishment Registration",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  0),
              _menuItem(
                  ()  {Get.to(const KYC());},
                  Colors.black,
                  "KYC Updation",
                  "Tep To More InformationI",
                  Colors.white,
                  "assets/image/epf.png",
                  1),
              _menuItem(
                  ()  {Get.to(const ECR());},
                  Colors.black,
                  "ECR/Returns and Payment",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  0),
              _menuItem(
                  () {Get.to(const Online());},
                  Colors.black,
                  "Online Claims\naccount transfer",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  1),
              _menuItem(
                  ()  {Get.to(const Epassbook());},
                  Colors.black,
                  "E-Passbook",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  0),
              _menuItem(
                  () {Get.to(const Sharam());},
                  Colors.black,
                  "Sharam suvidha\ncommen ECR",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  1),
              _menuItem(
                  ()  {Get.to(const Personal());},
                  Colors.black,
                  "Personal Portal",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  0),
              _menuItem(
                  () {Get.to(const IWorker());},
                  Colors.black,
                  "International\nWorkers Portal",
                  "Tep To More Information",
                  Colors.white,
                  "assets/image/epf.png",
                  1),
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

  _menuItem(void Function() onTap, cColor, String text, String ntext,
      Color bColors, String image, int pIntChange) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: GlassmorphicContainer(
          height: 18.h,
          width: 100.h,
          borderRadius: 20,
          blur: 10,
          alignment: Alignment.bottomCenter,
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
          child: pIntChange == 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.white,
                                  decoration: TextDecoration.none)),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(ntext,
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: Colors.white70,
                                  decoration: TextDecoration.none)),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          height: 110.sp,
                          width: 100.sp,
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          height: 110.sp,
                          width: 100.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Flexible(
                            child: Text(text,
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    overflow: TextOverflow.ellipsis)),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(ntext,
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: Colors.white70,
                                  decoration: TextDecoration.none)),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
