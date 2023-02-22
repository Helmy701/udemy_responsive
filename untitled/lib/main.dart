import 'package:flutter/material.dart';
import 'package:untitled/AleertDialog.dart';
import 'package:untitled/BottomNavigationBar.dart';
import 'package:untitled/DropdownButton.dart';
import 'package:untitled/GridView.dart';
import 'package:untitled/ListViewBuilder.dart';
import 'package:untitled/PageView.dart';
import 'package:untitled/PageViewBuilder.dart';
import 'package:untitled/TabBarView.dart';
import 'package:untitled/checkbox&radio&switch&ListTile.dart';
import 'package:untitled/drawer.dart';
import 'package:untitled/listView.dart';
import 'package:untitled/snackbar.dart';

import 'GridViewBuilder.dart';
import 'ListViewSeperated.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pageViewBuilder(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Strawberry Pavlova Recipe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Spacer(),
                            Text(
                              '17 review',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsetsDirectional.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.restaurant,
                                  size: 60,
                                ),
                                Text(
                                  'feed',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text('2 - 4'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.restaurant,
                                  size: 60,
                                ),
                                Text(
                                  'feed',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text('2 - 4'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.restaurant,
                                  size: 60,
                                ),
                                Text(
                                  'feed',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text('2 - 4'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
