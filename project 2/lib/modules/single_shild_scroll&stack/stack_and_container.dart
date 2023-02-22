import 'package:flutter/material.dart';

class StackAndContainer extends StatelessWidget
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  topEnd: Radius.circular(20),
                ),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                      image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg'),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200,
                    color: Colors.black.withOpacity(.7),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    // padding: EdgeInsetsDirectional.only(
                    //   top: 10,
                    // ),
                    child: Text('Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),


    );

  }
  void accessAlarm()
  {
    print('alarm  is accessed');
  }
}