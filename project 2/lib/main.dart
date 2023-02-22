import 'package:flutter/material.dart';
import 'package:project_b/modules/bmi/BMI_Calculator.dart';
import 'package:project_b/modules/users/Users_Screen.dart';
import 'package:project_b/modules/bmi_results/bmi_result_screen.dart';
import 'package:project_b/modules/counter/counter.dart';
import 'package:project_b/modules/home/home_screen_row.dart';
import 'package:project_b/modules/massenger/massenger.dart';
import 'package:project_b/modules/single_shild_scroll&stack/single_child_scroll_view.dart';
import 'package:project_b/modules/single_shild_scroll&stack/stack_and_container.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/DropDownSearch.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/SplashScreen.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/auth/Creat/addnodes.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/ShowModelBotttomSheet.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/auth/HomePage.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/auth/login.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/auth/signup.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/dialog.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/scrollController(not%20complate).dart';
import 'package:project_b/wael%20abo%20hamza%20complition/searchDelegate(not%20complate).dart';

import 'modules/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        buttonColor: Colors.blue,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
        ),
      ),
      routes: {
        'login' : (context) => Login(),
        'signup' : (context) => Signup(),
        'homepage' : (context) => HomePage(),
        'addnote' : (context) => AddNotes()
      },
    );
  }

}