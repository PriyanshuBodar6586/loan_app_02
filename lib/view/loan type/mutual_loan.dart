
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/loan%20guid/bike_loan.dart';
import 'package:loan_app_02/view/loan%20guid/car_loan.dart';
import 'package:loan_app_02/view/loan%20guid/eduction%20loan.dart';
import 'package:loan_app_02/view/loan%20guid/gold_loan.dart';
import 'package:loan_app_02/view/loan%20guid/home_loan.dart';
import 'package:loan_app_02/view/loan%20guid/personal_loan.dart';
import 'package:sizer/sizer.dart';

import '../loan guid/business_loan.dart';

// ignore: camel_case_types
class Mutual_loan extends StatefulWidget {
  const Mutual_loan({Key? key}) : super(key: key);

  @override
  State<Mutual_loan> createState() => _Mutual_loanState();
}

// ignore: camel_case_types
class _Mutual_loanState extends State<Mutual_loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle:
            const Text("Loan Type", style: TextStyle(color: CupertinoColors.white)),
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
              _menuItem((){Get.to(const Personal_Loan());},Colors.black, "Personal Loan","Get upto ₹ 5 lakh for 36 months\n EMI", Colors.white,"assets/image/personal.png",0),
              _menuItem((){Get.to(const Home_Loan());},Colors.black, "Home Loan","Get upto ₹ 5 lakh for 36 months\n EMI", Colors.white,"assets/image/home.png",1),
              _menuItem((){Get.to(const Business_Loan());},Colors.black, "Business Loan","Get upto ₹ 5 lakh for 36 months\n EMI", Colors.white,"assets/image/business.png",0),
              _menuItem((){Get.to(const Eduction_Loan());},Colors.black, "Eduction Loan","Anytime is a Good Time\nTo Invest", Colors.white,"assets/image/Eduction.png",1),
              _menuItem((){Get.to(const Gold_Loan());},Colors.black, "Gold Loan","Get upto ₹ 5 lakh for 36 months\n EMI", Colors.white,"assets/image/gold.png",0),
              _menuItem((){Get.to(const Car_Loan());},Colors.black, "Car Loan","Get upto ₹ 5 lakh for 36 months\n EMI", Colors.white,"assets/image/car.png",1),
              _menuItem((){Get.to(const Bike_Loan());},Colors.black, "Bike Loan","Get upto ₹ 5 lakh for 36 months\n EMI", Colors.white,"assets/image/bike.png",0),
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

  _menuItem(void Function() onTap,cColor, String text,String ntext, Color bColors,String image,int pIntChange) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ,
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
                    Text(ntext, style: TextStyle(fontSize: 8.sp,color: Colors.white70,decoration: TextDecoration.none)),
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
                    Text(text, style: TextStyle(fontSize: 18.sp,color: Colors.white,decoration: TextDecoration.none)),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(ntext, style: TextStyle(fontSize: 9.sp,color: Colors.white70,decoration: TextDecoration.none)),
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
