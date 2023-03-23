import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Calculatorr extends StatefulWidget {
  @override
  _CalculatorrState createState() => _CalculatorrState();
}

class _CalculatorrState extends State<Calculatorr> {
  dynamic displaytxt = 20;
  //Button Widget
  Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
    return  Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){

          calculation(btntxt);
        },
        child: Container(
          height: 8.h,
          width: 22.w,
          decoration: BoxDecoration(
              color:Colors.blueAccent,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text('$btntxt',
              style: TextStyle(
                fontSize: 35,
                color: txtcolor,
              ),
            ),
          ),

        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    //Calculator
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.sp)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Calculator display
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AutoSizeText('$text',
                    textAlign: TextAlign.left,
                    maxLines: 3 ,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.sp,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('AC',Colors.grey,Colors.black),
                calcbutton('+/-',Colors.grey,Colors.black),
                calcbutton('%',Colors.grey,Colors.black),
                calcbutton('/',Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('7',Colors.grey[850]!,Colors.white),
                calcbutton('8',Colors.grey[850]!,Colors.white),
                calcbutton('9',Colors.grey[850]!,Colors.white),
                calcbutton('x',Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('4',Colors.grey[850]!,Colors.white),
                calcbutton('5',Colors.grey[850]!,Colors.white),
                calcbutton('6',Colors.grey[850]!,Colors.white),
                calcbutton('-',Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('1',Colors.grey[850]!,Colors.white),
                calcbutton('2',Colors.grey[850]!,Colors.white),
                calcbutton('3',Colors.grey[850]!,Colors.white),
                calcbutton('+',Colors.amber[700]!,Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //this is button Zero
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: (){
                    calculation('0');
                  },
                  child: Container(
                    height: 8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        color:Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),

                    child: Center(
                      child: Text('0',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.white),
                      ),
                    ),
                    // color: Colors.grey[850],
                  ),
                ),

                calcbutton('.',Colors.grey[850]!,Colors.white),
                calcbutton('=',Colors.amber[700]!,Colors.white),
                calcbutton('AC',Colors.grey,Colors.black),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  //Calculator logic
  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
        finalResult = add();
      } else if( preOpr == '-') {
        finalResult = sub();
      } else if( preOpr == 'x') {
        finalResult = mul();
      } else if( preOpr == '/') {
        finalResult = div();
      }

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if(opr == '+') {
        finalResult = add();
      } else if( opr == '-') {
        finalResult = sub();
      } else if( opr == 'x') {
        finalResult = mul();
      } else if( opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }

    else if(btnText == '+/-') {
      result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
      finalResult = result;

    }

    else {
      result = result + btnText;
      finalResult = result;
    }


    setState(() {
      text = finalResult;
    });

  }


  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

}