import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App'
        ),
        actions: [
          IconButton(
              onPressed: accessAlarm,
              icon: Icon(
                  Icons.access_alarm)
          ),
          IconButton(
              onPressed: (){
                print('notification clicked');
                },
              icon: Icon(
                Icons.notification_important,
              ),
          ),
          Icon(
            Icons.search
          ),
        ],
        backgroundColor: Colors.teal,
        centerTitle: false,
      ),
      body: Container(
        color: Colors.orange,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,        //default
              child: Container(
                color: Colors.redAccent,
                child: Text(
                    'First Line',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 30.0,
                     ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: Text(
                    'Second Line',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 150.0,
                color: Colors.green,
                child: Text(
                    'Third Line',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            Container(
              height: 100.0,
              color: Colors.amber,
              child: Text(
                  'Forth Line',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void accessAlarm()
  {
    print('alarm  is accessed');
  }
}