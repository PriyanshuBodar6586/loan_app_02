import 'package:flutter/material.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:sizer/sizer.dart';

class FDCalculator extends StatefulWidget {
  const FDCalculator({super.key});

  @override
  State<FDCalculator> createState() => _FDCalculatorState();
}

class _FDCalculatorState extends State<FDCalculator> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  double? interest;
  double? total;
  bool isloading = false;

  void calculation() {
    final calinterestrate = (double.parse(_controller2.text) / 100 / 12) *
        int.parse(_controller3.text);
    final calinterest = calinterestrate * int.parse(_controller1.text);

    setState(() {
      interest = calinterest;
      total = int.parse(_controller1.text) + interest!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: backGround( body(),
        ),
    );
  }

  Widget body() {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    return
      Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Fixed Deposit\n Calculator", style: TextStyle(fontSize: 20.sp,color: Colors.white),),
          SizedBox(
            height: scheight * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputform(
                    title: "Deposit Amount :",
                    controller: _controller1,
                    hinttext: "e.g 20000"),
                inputform(
                    title: "Annual Interest Rate(%) :",
                    controller: _controller2,
                    hinttext: "e.g 3"),
                inputform(
                    title: "Period(in month) :",
                    controller: _controller3,
                    hinttext: "e.g 3"),
                SizedBox(
                  height: scheight * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    calculation();
                  },
                  child: Container(
                    height: scheight * 0.07,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child:Text("EMI Count",style: TextStyle(fontSize: 15.sp,color: Colors.white),),
                  ),
                ),
                SizedBox(
                  height: scheight * 0.01,
                ),
                interest != null
                    ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Result: ",
                      style: TextStyle(
                          fontSize: 31,
                          color: Colors.white,
                          fontFamily: "patrick"),
                    ),
                    SizedBox(
                      height: scheight * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Interest:  ${interest!.toStringAsFixed(2)}",
                        style:  TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontFamily: "patrick"),
                      ),
                    ),
                    SizedBox(
                      height: scheight * 0.01,
                    ),
                    Center(
                      child: Text(
                        "Total:  ${total!.toStringAsFixed(2)}",
                        style:  TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontFamily: "patrick"),
                      ),
                    ),
                  ],
                )
                    : const SizedBox()
              ],
            ),
          )
        ],
    );
  }

  Widget inputform(
      {String? title, TextEditingController? controller, String? hinttext}) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style:  TextStyle(
              fontSize: 13.sp, color: Colors.white, fontFamily: "patrick"),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: scheight * 0.06,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller,
            decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: hinttext),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
