import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

// ignore: camel_case_types
class Eduction_Loan extends StatefulWidget {
  const Eduction_Loan({Key? key}) : super(key: key);

  @override
  State<Eduction_Loan> createState() => _Eduction_LoanState();
}

// ignore: camel_case_types
class _Eduction_LoanState extends State<Eduction_Loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: appBar(false, "Eduction Loan Guide"),
        child: loans("Eduction", "assets/image/Eduction.png"));
  }
}
