import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class CalculatorWhiteUI extends StatefulWidget {
  @override
  _CalculatorWhiteUIState createState() => _CalculatorWhiteUIState();
}

class _CalculatorWhiteUIState extends State<CalculatorWhiteUI> {
  Color textColor1 =Colors.blueAccent;
  Color textColor2 =Colors.black;
   List input=[2,"+",2];
   List result=[4];
  Widget circle (Widget buttons){
    return NeumorphicButton
               ( 
                 provideHapticFeedback: true,
                 onPressed: (){},
                 style: NeumorphicStyle
          ( 
            shape:NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.circle(),
            lightSource: LightSource.topLeft,
            intensity: 0.70,
            depth:5,
            color: Color(0xffffffff),
              shadowLightColor:Color(0xffffffff) ,
            shadowDarkColor: Colors.grey,
           ) ,
                 child:buttons,
               );
  }
  @override
  Widget build(BuildContext context) {
    return 
           Scaffold(
             backgroundColor:NeumorphicColors.decorationMaxWhiteColor,
             body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column
        (
          
          children: 
          [   
            circle(InkWell(child: Text("Dark"),
               onTap: (){
                 Navigator.pushNamed(context, '/dark');
               },
              ),
              ),
              Padding
              (
                padding:EdgeInsets.only
                (
                  bottom: 100,
                )
              ),
          Neumorphic
          (
              style: NeumorphicStyle
              (
                lightSource: LightSource.topLeft,
                intensity: 0.70,
                depth:-5,
                color: Color(0xffffffff),
              ),
              child:Container
              (
                padding: EdgeInsets.only(right:15),
                 height:100,
                 width:350,
                child: Column
                ( 
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: 
                  [
                    Text("2+2",style: TextStyle
                    (
                       fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: textColor2
                    )
                    ,
                    ),
                    Text("4",style: TextStyle
                    (
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color:textColor1
                    ),)
                  ],
                ),
              )
          ),
        Padding(padding:EdgeInsets.only(bottom:10)),
         Expanded(
                    child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Flexible(
                     fit: FlexFit.loose,
                         child: Column
                ( 
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: 
                  [
                   Row
                          (//mainAxisSize: MainAxisSize.values[],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: 
                            [
                 circle(Text("AC",
                       style:TextStyle
                       (
                           color:textColor1,
                           fontSize:20,
                       )
                       )),
                 circle(Text("/",
                       style:TextStyle
                       (
                           color:textColor1,
                           fontSize:20,
                       )
                       )),
                  circle(Text("X",
                       style:TextStyle
                       (
                           color:textColor1,
                           fontSize:20,
                       )
                       )),

                            ],
                          ),
                     Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                 circle(Text("7",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                 circle(Text("8",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                  circle(Text("9",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                
                      ],
                    )  
                  , Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                 circle(Text("4",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                 circle(Text("5",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                  circle(Text("6",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                

                      ],
                    )
                    ,
                     Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                 circle(Text("1",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                 circle(Text("2",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                  circle(Text("3",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),

                      ],
                    )
                    ,
                     Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                 circle(Text("%",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                 circle(Text("0",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                  circle(Text(",",
                   style:TextStyle
                   (
                     color:textColor2,
                     fontSize:20,
                   )
                   )),
                      ],
                    )
                  ],
                ),
                   ),
                   Column
                   ( mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: 
                     [
               circle(
                      Icon(
                        Icons.cancel,color:textColor1,
                        )
                        ),
                 circle(
                      Icon(
                        Icons.remove,color:textColor1,
                        )
                        ),
                  circle(
                      Icon(
                        Icons.add,color:textColor1,
                        )
                        ),
                NeumorphicButton
                     ( 
              onPressed: (){},
              style: NeumorphicStyle
                ( 
                  shape:NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  lightSource: LightSource.topLeft,
                  intensity: 0.70,
                  depth:5,
                  color: Colors.deepPurple,
                    shadowLightColor:Color(0xffffffff) ,
                  shadowDarkColor: Colors.grey,
                 ) ,
              child:Container
              (
                width: 10,
                height: 120,
                child: Center(
                  child: Text
                  (
                    "=",style: TextStyle
                    (
                      color:Colors.white,
                      fontSize: 20
                      ),
                  ),
                ),
              ),
                     ), 
                
                     ],
                   )
                 ],
               ),
         )  
          ],   
        ),
      ),
           );     
  }
}
