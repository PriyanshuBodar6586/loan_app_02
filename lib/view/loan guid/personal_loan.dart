import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Personal_Loan extends StatefulWidget {
  const Personal_Loan({Key? key}) : super(key: key);

  @override
  State<Personal_Loan> createState() => _Personal_LoanState();
}

// ignore: camel_case_types
class _Personal_LoanState extends State<Personal_Loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: appBar(false, "Personal Loan Guide"),
        child: loans("Personal", "assets/image/personal.png"));
  }
}
