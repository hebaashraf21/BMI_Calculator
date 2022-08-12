import 'dart:math';

import 'package:bmi_calculator/BMI_Result.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  @override
  BMI_Calc createState() {
    return BMI_Calc();
    throw UnimplementedError();
  }
}

class BMI_Calc extends State<BMI> {
  bool isMale = true;
  double Height = 160;
  int Weight = 65;
  int Age = 25;
  double result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 181, 45, 240),
          title: Center(
            child: Text("BMI Calculator",style: TextStyle(color: Colors.white),),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = !isMale;
                              //print("right");
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              color: isMale ? kPrimaryColor : Color.fromARGB(255, 184, 105, 218),
                            ),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 60,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = !isMale;
                              //print("left");
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              color: isMale ? Color.fromARGB(255, 184, 105, 218) : kPrimaryColor,
                            ),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.female, size: 60),
                                SizedBox(height: 10),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 2),
            Expanded(
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: kPrimaryColor,
                        ),
                        width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Height",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${Height.round()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("cm")
                                ],
                              ),
                              Slider(
                                value: Height,
                                onChanged: (value) {
                                  setState(() {
                                    Height = value;
                                  });
                                },
                                min: 80,
                                max: 200,
                                inactiveColor: Color.fromARGB(255, 184, 105, 218),
                                activeColor: Colors.white,
                              ),
                            ],
                          ),
                        ),)),
            SizedBox(height: 10),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(

                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: kPrimaryColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Wight",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "${Weight}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        heroTag: 1,
                                          child: Icon(
                                            Icons.add,
                                            color: kPrimaryColor,
                                          ),
                                          backgroundColor: Colors.white,
                                          onPressed: () {
                                            setState(() {
                                              Weight++;
                                            });
                                          }),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      FloatingActionButton(
                                        heroTag: 2,
                                          child: Icon(
                                            Icons.remove,
                                            color: kPrimaryColor,
                                          ),
                                          backgroundColor: Colors.white,
                                          onPressed: () {
                                            setState(() {
                                              Weight--;
                                            });
                                          }),
                                    ],
                                  )
                                ],
                              ),
                            ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  color: kPrimaryColor,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Age",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      "${Age}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          heroTag: 3,
                                            child: Icon(
                                              Icons.add,
                                              color: kPrimaryColor,
                                            ),
                                            backgroundColor: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                Age++;
                                              });
                                            }),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        FloatingActionButton(
                                          heroTag: 4,
                                            child: Icon(
                                              Icons.remove,
                                              color: kPrimaryColor,
                                            ),
                                            backgroundColor: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                Age--;
                                              });
                                            }),
                                      ],
                                    )
                                  ],
                                ),
                              ))
                    ],
                  ),
                )),

               Padding(padding: EdgeInsets.all(10),
                    child: Container(
                height:50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: kPrimaryColor,
                      ),
                      child: MaterialButton(
                        child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        onPressed: () {
                          result = Weight /pow(Height/100, 2);
                          print(result);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BMI_Result(result)));
                        },
                      ),
                    ),
                   ),
          ],
        ));
    throw UnimplementedError();
  }
}
