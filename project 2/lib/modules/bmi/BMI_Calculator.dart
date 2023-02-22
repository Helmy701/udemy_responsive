import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_b/modules/bmi_results/bmi_result_screen.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  double height = 120;
  bool isMale = true;
  int age = 20;
  int wight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(

                          color: isMale ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(15,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/male.png',),
                              height: 110,
                              width: 110,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(

                          color: !isMale ? Colors.blue : Colors.grey[400],
                          borderRadius: BorderRadius.circular(15,),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/female.png',),
                              height: 90,
                              width: 90,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadiusDirectional.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'HEIGHT',
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '${height.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                          ),
                        ),
                        Text('CM',),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 240,
                        min: 50,
                        onChanged: (value)
                        {
                          setState(() {
                            height = value;
                          });
                          print(value.round());
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '${wight.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    wight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                    Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    wight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: ()
              {
                double result = wight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => BMIResultScreen(
                    age: age,
                    isMale: isMale,
                    result: result.round(),
                  ),
                ),
                );
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => BMIResultScreen(
                //       age: age,
                //       isMale: isMale,
                //       result: result.round(),
                //     ),
                //   ),
                // );  // I can't do pop in the next page but i can do push again to retairn to the main page (use in login in facebook)
              },
              height: 50,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  // var result = wight / pow(height / 100, 2);
  // print(result.round());
}
