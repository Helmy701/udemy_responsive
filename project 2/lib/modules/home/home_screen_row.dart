import 'package:flutter/material.dart';

class HomeSreenRow extends StatelessWidget
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
        color: Colors.purple,
        height: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              color: Colors.red,
              child: Text('First',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Text('Second',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Text('Third',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Text('forth',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),
              ),
            )

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