import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Gold_Loan extends StatefulWidget {
  const Gold_Loan({Key? key}) : super(key: key);

  @override
  State<Gold_Loan> createState() => _Gold_LoanState();
}

// ignore: camel_case_types
class _Gold_LoanState extends State<Gold_Loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: appBar(false, "Gold Loan Guide"),
        child: loans("Gold", "assets/image/gold.png"));
  }
}
