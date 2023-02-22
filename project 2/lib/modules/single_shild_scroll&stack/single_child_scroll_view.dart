import 'package:flutter/material.dart';

class SingleChildSroll extends StatelessWidget
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              Container(
                child: Text('First',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Second',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Third',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('forth',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('First',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Second',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Third',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('forth',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ), Container(
                child: Text('First',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Second',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Third',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('forth',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('First',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Second',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('Third',
                  style: TextStyle(
                      fontSize: 30.0
                  ),
                ),
              ),
              Container(
                child: Text('forth',
                  style: TextStyle(
                      fontSize: 30.0
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