import 'package:flutter/material.dart';
import 'package:CalculatorUI/pages/calculatorui.dart';
import 'package:CalculatorUI/pages/darkui.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
void main(){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp
    (
      initialRoute:"/white",
            routes: 
            {
            '/white': (context) => CalculatorWhiteUI(),
            '/dark': (context) => CalculatorDarkUI(), 
            },
      debugShowCheckedModeBanner: false,
      // home: Scaffold
      // (
      //   backgroundColor:NeumorphicColors.decorationMaxWhiteColor,
      //   body: SafeArea
      //   (
      //     child: MaterialApp
      //     (
      //       debugShowCheckedModeBanner: false,
            
      //     ),
      //   ),
          
      // ),

    );
  }
}