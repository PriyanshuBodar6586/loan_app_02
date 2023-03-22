import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Business_Loan extends StatefulWidget {
  const Business_Loan({Key? key}) : super(key: key);

  @override
  State<Business_Loan> createState() => _Business_LoanState();
}

// ignore: camel_case_types
class _Business_LoanState extends State<Business_Loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: appBar(false, "Business Loan Guide"),
        child: loans("Business", "assets/image/business.png"));
  }
}
