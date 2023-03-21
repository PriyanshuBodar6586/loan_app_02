import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:loan_app_02/view/loan%20type/mutual_loan.dart';
import 'package:sizer/sizer.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle: Text("Home Screen",style: TextStyle(color: CupertinoColors.white)),
      ), child:backGround(
     SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
           SizedBox(
             height: 9.h,
           ),
           CreditCardWidget(
             glassmorphismConfig:
            Glassmorphism.defaultConfig() ,
             cardNumber: cardNumber,
             expiryDate: expiryDate,
             cardHolderName: cardHolderName,
             cvvCode: cvvCode,
             bankName: 'Admin Bank',
             frontCardBorder:
             !useGlassMorphism ? Border.all(color: Colors.grey) : null,
             backCardBorder:
             !useGlassMorphism ? Border.all(color: Colors.grey) : null,
             showBackView: isCvvFocused,
             obscureCardNumber: true,
             obscureCardCvv: true,
             isHolderNameVisible: true,
             cardBgColor: AppColors.cardBgColor,
             isSwipeGestureEnabled: true,
             onCreditCardWidgetChange:
                 (CreditCardBrand creditCardBrand) {},

           ),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             physics: BouncingScrollPhysics(),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   _menuItem(Colors.black,"All\ncalculator",Colors.white, Icons.calculate_rounded),
                   SizedBox(
                     width: 2.5.w,
                   ),
                   _menuItem(Colors.black,"Invest \nand Grow",Colors.white,Icons.trending_up_rounded),
                   SizedBox(
                     width: 2.5.w,
                   ),
                   _menuItem(Colors.black,"EPF\nService",Colors.white,CupertinoIcons.doc_chart),
                 ],
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.all(8.0),
             child: GlassmorphicContainer(
             width: 95.w,
             height: 36.5.h,
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
                 stops: [
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
               child: SingleChildScrollView(
                 physics: BouncingScrollPhysics(),
                 scrollDirection: Axis.vertical,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(
                       height: 1.h,
                     ),
                     _listItem((){Get.to(Mutual_loan());},"Loan Type",CupertinoIcons.money_dollar_circle,Icons.arrow_forward_ios_sharp),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                       child: Divider(height: 1.sp,color: Colors.white70,),
                     ),
                     _listItem((){Get.to(Mutual_loan());},"Adhar Loan Guid",CupertinoIcons.creditcard,Icons.arrow_forward_ios_sharp),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                       child: Divider(height:1.sp,color: Colors.white70,),
                     ),
                     _listItem((){Get.to(Mutual_loan());},"Bank Information",Icons.account_balance_rounded,Icons.arrow_forward_ios_sharp),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                       child: Divider(height:1.sp,color: Colors.white70,),
                     ),
                     _listItem((){Get.to(Mutual_loan());},"Instant Loan",CupertinoIcons.timer,Icons.arrow_forward_ios_sharp),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                       child: Divider(height: 1.sp,color: Colors.white70,),
                     ),
                     _listItem((){Get.to(Mutual_loan());},"Near By",CupertinoIcons.location_solid,Icons.arrow_forward_ios_sharp),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 40),
                       child: Divider(height: 1.sp,color: Colors.white70,),
                     ),


                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
     ),
    )
    );
  }
}

_menuItem(cColor,String text,Color bColors,IconData icons) {
  return GlassmorphicContainer(
    width: 15.h,
    height: 20.h,
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
        stops: [
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
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icons,color: Colors.white,size: 20.sp),
        SizedBox(
          height: 1.h,
        ),
        Text (textAlign: TextAlign.center,text,style: TextStyle(fontSize: 15.sp,color: Colors.white),),
      ],
    ),
  );
}

_listItem(void Function() onTap,String txt,IconData icon,IconData ticon,) {
  return CupertinoListTile(
    onTap:onTap ,
  title: Text(txt,style: TextStyle(fontSize:15.sp,color: Colors.white,)),
  leading: Icon(icon,color: Colors.white,size: 20.sp),
  trailing:Icon(ticon,color: Colors.white,size: 20.sp,) ,
  );
}