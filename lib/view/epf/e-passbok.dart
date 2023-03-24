import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class Epassbook extends StatefulWidget {
  const Epassbook({Key? key}) : super(key: key);

  @override
  State<Epassbook> createState() => _EpassbookState();
}

class _EpassbookState extends State<Epassbook> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar(false, "Epassbook "),
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
                          """ We bring you steps that you must follow
while applying for online EPF transfer Step 1:
Go to the EPFO website, epfindia.com

 Step 2: The home page will show a section
called online transfer claim portal. Click on it.

 Step 3. Before logging in, check if you can
apply online. If not, you will have to submit
a physical copy of Form 13 to either your
present or your previous employer. Step 4:
After checking the eligibility, log in and go to
the claims section. There, click on request for
transfer of funds. Step 5: Form 13 will open
Fill your PF numbers with both previous
and current employers and click on click
here to get details. The name and address
of the establishment, the PF account held
by the EPFO and your name will appear on
the screen. Step 6: Your date of joining, date
of leaving and father / spouses name also
appear. This is to make sure that the money
is transferred to the right account""",
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
