
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/EMICalculator.dart';
import 'package:loan_app_02/view/FDCalculator.dart';
import 'package:loan_app_02/view/GSTCalculator.dart';
import 'package:loan_app_02/view/calculatorrr.dart';
import 'package:sizer/sizer.dart';

import 'SIPCalculator.dart';



// ignore: camel_case_types
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

// ignore: camel_case_types
class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle:
        const Text("Calculator Type", style: TextStyle(color: CupertinoColors.white)),
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
                height: 20.h,
                color: Colors.white60,
              ),
              _menuItem((){Get.to(Calculatorr());},Colors.black, "Calculator","Calculat Your All Amount", Colors.white,"assets/image/calculator.png",0),
              _menuItem((){Get.to(FDCalculator());},Colors.black, "FD  Calculator","Calculat Your All Amount", Colors.white,"assets/image/fd.png",1),
              _menuItem((){Get.to(GstCalculator());},Colors.black, "GST Calculator","Calculat Your All Amount", Colors.white,"assets/image/gst.png",0),
              _menuItem((){Get.to(SIPCalculator());},Colors.black, "SIP Calculator","Calculat Your All Amount", Colors.white,"assets/image/sip.png",1),
              _menuItem((){Get.to(EMICalculator());},Colors.black, "EMI Calculator","Calculat Your All Amount", Colors.white,"assets/image/emi.png",0),
              Container(
                height: 20.h,
                color: Colors.white60,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _menuItem(void Function() onTap,cColor, String text,String ntext, Color bColors,String image,int pIntChange) {
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
          child: pIntChange == 0?Row(
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
                    Text(text, style: TextStyle(fontSize: 18.sp,color: Colors.white,decoration: TextDecoration.none)),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(ntext, style: TextStyle(fontSize: 9.sp,color: Colors.white70,decoration: TextDecoration.none)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 80.sp,
                  width: 100.sp,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ):Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 80.sp,
                  width: 100.sp,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
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
                    Text(text, style: TextStyle(fontSize: 18.sp,color: Colors.white,decoration: TextDecoration.none),),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(ntext, style: TextStyle(fontSize: 9.sp,color: Colors.white70,decoration: TextDecoration.none),),
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
