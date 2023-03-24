import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/view/question/first_question.dart';
import 'package:sizer/sizer.dart';

class AppColors {

  static Color fullwhite = const Color(0xFFFFFFFF);
  static const Color cardBgColor = Color(0xff363636);
  static const Color colorB58D67 = Color(0xffB58D67);
  static const Color colorE5D1B2 = Color(0xffE5D1B2);
  static const Color colorF9EED2 = Color(0xffF9EED2);
  static const Color colorFFFFFD = Color(0xffFFFFFD);

}
backGround(Widget child) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    // padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/image/gradient-geometric.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: child,
  );
}
appBar(bool leading,String pStrText){
  return  CupertinoNavigationBar(
    automaticallyImplyLeading: leading,
    backgroundColor: CupertinoColors.white.withOpacity(0.0),
    middle: Text(pStrText,
        style: TextStyle(color: CupertinoColors.white,fontSize: 19.sp)),
  );
}
loans(String pStrLoanType, String pStrUrl) {
  return backGround(
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

                  Image.asset(pStrUrl),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SelectableText(
                      """Gone are those days, when the process of getting a $pStrLoanType loan was lengthy and tedious. This is the era of hassle-free quick $pStrLoanType loans. Nowadays, the processing of a $pStrLoanType loan application has become faster once the applicant submits all necessary documents. Here is a step-by-step guide to understand $pStrLoanType loan process in India.


Step 1 : Application of $pStrLoanType loan

The process of availing a $pStrLoanType loan begins with the application form. You can apply online for a $pStrLoanType loan with help of various bank’s websites which also provide self-help tools like a $pStrLoanType loan eligibility calculator and a $pStrLoanType loan EMI calculator online.
To complete the $pStrLoanType loan process, you need to submit certain documents that act like identity proof, address proof, income proof and so on. You also need to provide details of your financial assets and liabilities. Following are few essential documents, you need to submit in order to complete the application process,

📃  Age proof

📃  Address proof

📃  Income proof

Property documents, in case the property to be purchased is finalised
Employment details, including a summary stating the working nature of your employer.
Nowadays, banks provide door-step services to their customers, where their representative will come and personally collect all the documents required to get a $pStrLoanType loan.

Step 2 : Paying processing fees

$pStrLoanType loan processing fees are the mandatory charges you need to pay to the bank to process your application. Every bank has its guidelines regarding processing fees. The $pStrLoanType loan processing fee is a one-time non-refundable charge that borrowers are required to pay to the $pStrLoanType loan lenders.

Step 3 : Discussion with your bank

After paying the processing fees, the bank or loan lenders check the authenticity of documents shared. This process generally takes two to three days; however, if the documentation is done correctly, this part of the $pStrLoanType loan process gets over quickly. Later on, the bank asks the applicant for a face-to-face interaction to discuss further details of the $pStrLoanType loan.
The discussion is generally meant to confirm the repaying capabilities of the applicant. However, you can clear your doubts regarding the $pStrLoanType loan during a conversation with the bank. Banks help their customers at each stage of the $pStrLoanType loan application process.

Step 4 : Approval of a loan

Every bank thoroughly verifies all the documents submitted by the applicant before sanctioning the loan. The approval of your $pStrLoanType loan application is dependent on the bank as well as the documents you have submitted. If all works well, your $pStrLoanType loan gets approved, and you receive a confirmation letter stating the amount to be sanctioned by the bank.

Step 5 : Processing of confirmation letter

After receiving the confirmation letter, you need to submit its signed copy which acts as your acceptance to the offer provided by the bank. Then, the bank processes the documents of the property to be purchased. Many banks often send their representative to inspect the premises of the property to be bought.

Step 6 : Disbursement of the loan

Once the inspection of the property is done, you need to sign the agreement of the $pStrLoanType loan provided by the bank. After that, you receive the loan amount via disbursement mode opted from your end.

""",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 11.5.sp,decoration: TextDecoration.none),
                    ),
                  ),

                  Image.asset(pStrUrl),
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
              child:Text("Next",style: TextStyle(color: Colors.white,fontSize: 25.sp,decoration: TextDecoration.none),)),
        ),
      ],
    ),
  );
}
