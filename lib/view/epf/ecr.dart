import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class ECR extends StatefulWidget {
  const ECR({Key? key}) : super(key: key);

  @override
  State<ECR> createState() => _ECRState();
}

class _ECRState extends State<ECR> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar(false, "ECR Returns & Payment"),
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
                          """ - UMANG
                          
Unified Mobile Application for New-age
Governance (UMANG) app was launched in
November 2017 as a means of creating a
common portal for all the facilities offered
by the government. Additionally, other
government developed programs such as the
Aadhaar and Digilocker are integrated with
the app.

-Umang offers over 180 government services
to its users. One of these is the services
offered by the EPFO. The EPF service on
the UMANG app allows users to access
information about their EPF account. This
service is extended to both employers and
employees. Though the EPFO tab on the
UMANG app, employees can file claims for
EPF withdrawal as well as track the status
of their claims. Some of the requirements
for using this facility is having your Aadhaar
inked to the app, as well as an active UAN.""",
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
                Get.to(const First_question());
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
