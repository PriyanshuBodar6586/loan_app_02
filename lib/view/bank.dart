import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/controller/controller.dart';

import 'package:sizer/sizer.dart';

import 'bankinfo.dart';


class BankScreen extends StatefulWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  HomeController cnt = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: appBar(false, "Bank Information"),
      child: backGround(
         Column(
          children: [SizedBox(
            height: 11.h,
          ),
           Container(
             height: 25.h,
             width: 100.w,
             color: Colors.white70,
           ),
            Flexible(

              child: ListView.builder(
                itemCount: cnt.bank.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(const BankInDetail(), arguments: [
                        {"bank": cnt.bank[index]},
                        {"care": cnt.bankNumber[index]}
                      ]);
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GlassmorphicContainer(
                        height: 8.h,
                        width: 100.w,
                        borderRadius: 10,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Text("  ${index + 1}",style: TextStyle(color: Colors.white,fontSize: 12.sp,decoration: TextDecoration.none),),
                            Text(cnt.bank[index], style: TextStyle(color:  Colors.white,fontSize: 12.sp,decoration: TextDecoration.none),
                              ),
                            const Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 30),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}