import 'package:flutter/cupertino.dart';
import 'package:loan_app_02/const/const.dart';

class Mutual_loan extends StatefulWidget {
  const Mutual_loan({Key? key}) : super(key: key);

  @override
  State<Mutual_loan> createState() => _Mutual_loanState();
}

class _Mutual_loanState extends State<Mutual_loan> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: CupertinoColors.white.withOpacity(0.0),
    middle: Text("Loan Type",style: TextStyle(color: CupertinoColors.white)),
    ), child:backGround(
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

          ],
        ),

      ),
    ),
    );
  }
}
