import 'package:flutter/cupertino.dart';

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