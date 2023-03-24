import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class Online extends StatefulWidget {
  const Online({Key? key}) : super(key: key);

  @override
  State<Online> createState() => _OnlineState();
}

class _OnlineState extends State<Online> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar(false, "Online Claims"),
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
                          """ ECR/ Returns and Payments Step 1 Login
to EPFO portal using your ECR portal
credentials: Once logged in, you car
check the details of Establishment Name,
Establishment ID, Exemption Status (PF,
Pension, EDLI). Establishment Address
and PF office Step 2. To upload ECR, go to
Payments tab >> ECR (UPLOAD]+Step 3
On next screen, ie ECR File Upload, click on
ECR Help File to view the ECR file format
To upload the ECR, select the Wage Month
and Salary Disbursal Date. Step 4: Select
your ECR text file to be uploaded. An ECR
text file appears like the one below. Step
5: Select the remaining fields like File Type
(Select ECR), Contribution Rate % (Default
value is 12 %), add comment, and click on
Upload Button: Step 6: Once uploaded, the
file will be validated by the portal against the
pre-defined conditions. Once validation is
successful, you can see the following screen
with Validation Successful message: Click
Verify button generate TRRN""",
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
