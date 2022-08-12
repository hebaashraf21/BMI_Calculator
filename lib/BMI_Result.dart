import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget
{
  late final double result;
  BMI_Result(double r)
  {
     result=r;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 181, 45, 240),
        leading:IconButton(icon: Icon(Icons.arrow_back),
                  onPressed: (){Navigator.pop(context);}),
        title: Center(child: Text("BMI Result")),          
        
        ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Your BMI result:",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color:kPrimaryColor),),
            SizedBox(height:20),
            Text("${result.round()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize:45,color: kPrimaryColor),),
            SizedBox(height:40),
            Padding(padding: EdgeInsets.all(10),
            child: (result>=25)?Text("Take care of yourself, You are overweight.",style:TextStyle(fontSize: 17,color: kPrimaryColor)):Text("Great, You are in the BMI healthy range",style:TextStyle(fontSize: 17,color: kPrimaryColor)))
          ],
        ),)

    );
    throw UnimplementedError();
  }

}