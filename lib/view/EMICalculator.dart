import 'dart:math';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:intl/intl.dart';
import 'package:loan_app_02/const/const.dart';
import 'package:sizer/sizer.dart';

class EMICalculator extends StatefulWidget {
  const EMICalculator({Key? key}) : super(key: key);

  @override
  _EMICalculatorState createState() => _EMICalculatorState();
}

class _EMICalculatorState extends State<EMICalculator> {
  double EMI = 0;

  final formatCurrency = NumberFormat.simpleCurrency();




  double loanamountsliderval = 1;
  double interestRatesliderval = 1;
  double loanTenuresliderval = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: backGround(
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Your Loan EMI is",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "₹ ${EMI}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "/ Month",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                GlassmorphicContainer(
                  height: MediaQuery.of(context).size.height * 0.766,
                  width: MediaQuery.of(context).size.width,
                  borderRadius: 20,
                  blur: 10,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: const [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.5),
                      Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      myWidget(
                          "Loan Amount", loanamountsliderval, 1, 100000, 0),
                      myWidget(
                          "Interest Rate", interestRatesliderval, 1, 10, 1),
                      myWidget("Loan Tenure", loanTenuresliderval, 1, 12, 2),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          primary: Colors.deepPurpleAccent,
                          side: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        child: const Text(
                          "Calculate",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          double rate = interestRatesliderval / 12 / 100;

                          double emi = loanamountsliderval *
                              rate *
                              (pow(1 + rate, loanTenuresliderval) /
                                  (pow(1 + rate, loanTenuresliderval) - 1));

                          setState(() {
                            EMI = emi.toInt().toDouble();
                          });
                          print("$EMI");
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget myWidget(
      String heading, double sliderval, double _min, double _max, int i) {
    return Column(
      children: [
        Text("$heading", style: TextStyle(color: Colors.white,fontSize: 18.sp)),
        Stack(
          alignment: Alignment.center,
          children: [

            (i == 1)
                ? Text(
                    "${sliderval.toInt()} %",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                : (i == 2)
                    ? Text(
                        "${sliderval.toInt()} Months",
                        style:  TextStyle(
                          color: Colors.white70,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    : (i == 0)
                        ? Text(
                            "${formatCurrency.format(sliderval.toInt())}",
                            style:  TextStyle(
                              color: Colors.white70,
                              fontSize: 20.sp,

                              fontWeight: FontWeight.w700,
                            ),
                          )
                        : Text(
                            "${sliderval.toInt()}",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          )
          ],
        ),
        Slider(
          value: sliderval,
          min: _min,
          max: _max,
          onChanged: (val) {
            setState(() {
              if (i == 0) {
                loanamountsliderval = val;
                sliderval = val;
              } else if (i == 1) {
                interestRatesliderval = val;
                sliderval = val;
              } else if (i == 2) {
                loanTenuresliderval = val;
                sliderval = val;
              }
            });
          },
          activeColor: const Color(0xffffffff),
          inactiveColor: const Color(0xff727272),
        ),
      ],
    );
  }
}
