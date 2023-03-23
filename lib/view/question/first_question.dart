import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:loan_app_02/view/question/second.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class First_question extends StatefulWidget {
  const First_question({Key? key}) : super(key: key);

  @override
  State<First_question> createState() => _First_questionState();
}

class _First_questionState extends State<First_question> {
  final List<Widget> fancyCards = <Widget>[
    FancyCard(
      title: "5000",
    ),
    FancyCard(
      title: "10,000",
    ),
    FancyCard(
      title: "20,000",
    ),
    FancyCard(
      title: "30,000",
    ),
    FancyCard(
      title: "40,000",
    ),
    FancyCard(
      title: "50,000",
    ),
    FancyCard(
      title: "60,000",
    ),
    FancyCard(
      title: "70,000",
    ),
    FancyCard(
      title: "80,000",
    ),
    FancyCard(
      title: "90,000",
    ),
    FancyCard(
      title: "100,000",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
        middle: const Text("Your Income",
            style: TextStyle(color: CupertinoColors.white)),
      ),
      child: backGround(
        Column(
          children: [
            SizedBox(
              height: 9.h,
            ),

            Expanded(
              child: StackedCardCarousel(
                items: fancyCards,
                type: StackedCardCarouselType.cardsStack,
              ),
            ),
          ],
        ),

      ),
    );
  }

}
class FancyCard extends StatelessWidget {
  const FancyCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return  GlassmorphicContainer(
              height: 47.h,
              width: 90.w,
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Lottie.asset("assets/image/55607-flying-wallet-money.json",height: 150.sp,width: 150.sp,),
                    Text(
                      title,
                      style:TextStyle(color: Colors.white,decoration: TextDecoration.none),
                    ),
                    ElevatedButton(

                      onPressed: () { Get.to(Second_sscreen());},
                      child: Text("Go to Next Page",style: TextStyle(color: Colors.white,decoration: TextDecoration.none)),




                    ),
                  ],
                ),
              ),
            );
  }
}
