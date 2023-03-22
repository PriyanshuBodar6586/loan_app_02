import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Bike_Loan extends StatefulWidget {
  const Bike_Loan({Key? key}) : super(key: key);

  @override
  State<Bike_Loan> createState() => _Bike_LoanState();
}

// ignore: camel_case_types
class _Bike_LoanState extends State<Bike_Loan> {
  String pStrLoanType= "Bike";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: appBar(false, "Bike Loan Guide"),
      child: loans("Bike", "assets/image/bike.png")
    );
  }
}
