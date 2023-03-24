import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class Establishment extends StatefulWidget {
  const Establishment({Key? key}) : super(key: key);

  @override
  State<Establishment> createState() => _EstablishmentState();
}

class _EstablishmentState extends State<Establishment> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar(false, "Establishment Registration"),
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
                          """ -An Employee Provident Fund is an initiative
 designed to offer social security benefits
 to employees of a particular organization,
 building stronger employee employer bonds.
 In order to enjoy these benefits to the hilt,
 employers need to follow a set of rules and
 guidelines laid out, with registration forming
 the first step. + Employers need to provide
 the following details to successfully register
 themselves.
 
 -Name and address of company
 
 Head office and branch details
 
 Mention date of incorporation / registration
 of company Fill up details of employees
 total employee strength
 Activity the business / enterprise is involved
 in-i.e. manufacturing, production, service
 etc.""",
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
