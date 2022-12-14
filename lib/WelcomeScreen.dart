
import 'package:bmi_calculator/BMI_Calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';



class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 60,),
          Expanded(
            flex: 2,
            child: Padding(padding: EdgeInsets.all(25),
            child: Container(
              child: Image(image: AssetImage('assets/BMI.png'))
              //child: CircleAvatar(radius: 170,backgroundImage: NetworkImage("https://drive.google.com/file/d/1Ian3soj0fv152f8XlsyPVXlGFa9bkdjr/view?usp=sharing"),),
            ),)
          ),
          SizedBox(height: 110,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return BMI();
                        },
                      ));
                    },
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
   
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          
                          Text(
                            "START",
                            style: Theme.of(context).textTheme.button?.copyWith(
                                  color: Color.fromARGB(255, 245, 244, 244),
                                ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}