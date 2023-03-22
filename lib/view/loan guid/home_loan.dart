import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Home_Loan extends StatefulWidget {
  const Home_Loan({Key? key}) : super(key: key);

  @override
  State<Home_Loan> createState() => _Home_LoanState();
}

// ignore: camel_case_types
class _Home_LoanState extends State<Home_Loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: appBar(false, "Home Loan Guide"),
        child: loans("Home", "assets/image/home.png"));
  }
}
