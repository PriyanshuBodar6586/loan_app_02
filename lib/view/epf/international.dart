import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class IWorker extends StatefulWidget {
  const IWorker({Key? key}) : super(key: key);

  @override
  State<IWorker> createState() => _IWorkerState();
}

class _IWorkerState extends State<IWorker> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar(false, "Worker Portal"),
      child: backGround(
        Column(
          children: [
            SizedBox(
              height: 9.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GlassmorphicContainer(
                height: 80.h,
                width: 100.w,
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
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: 22.h,
                        width: 100.w,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      //Image.asset(pStrUrl),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SelectableText(
                          """ Procedure for Generating Jeevan Pramaan
Digital Life Certificate o Pre - Requisites
for Digital Life Certificate Generation The
pensioner must have an Aadhaar number
* The pensioner must have an existing
mobile number * Registration of the
Aadhaar number with Pension Disbursing
Agency (bank Post Office etc) should have
been done already Biometric device list of
supported devices is given on the JP portal)
PC with Windows 7.0 & above Android
Mobile / Tablet 4.0 & above oso Internet
Connectivity.""",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 11.5.sp,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      //Image.asset(pStrUrl),
                      Container(
                        height: 22.h,
                        width: 100.w,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(First_question());
              },
              child: GlassmorphicContainer(
                height: 7.5.h,
                width: 70.w,
                borderRadius: 25,
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
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      decoration: TextDecoration.none),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
