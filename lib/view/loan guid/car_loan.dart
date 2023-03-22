import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Car_Loan extends StatefulWidget {
  const Car_Loan({Key? key}) : super(key: key);

  @override
  State<Car_Loan> createState() => _Car_LoanState();
}

// ignore: camel_case_types
class _Car_LoanState extends State<Car_Loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: appBar(false, "Car Loan Guide"),
        child: loans("Car", "assets/image/car.png"));
  }
}
