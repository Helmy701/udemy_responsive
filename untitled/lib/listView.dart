import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Row(
        children: [
          Container(
            width: 200,
            child: ListView(
              // physics: ClampingScrollPhysics(),  >> default
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  height: 200,
                  color: Colors.red,
                  child: Text('container one'),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        height: 100,
                        color: Colors.green,
                        child: Text('Nested ListView'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                  child: Text('container one'),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      height: 100,
                      color: Colors.brown,
                      child: Text('Nested ListView'),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  color: Colors.amber,
                  child: Text('container one'),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            child: ListView(
              // physics: ClampingScrollPhysics(),  >> default
              physics: BouncingScrollPhysics(),
              children: [
                Text('CARS'),
                Container(
                  height: 250,
                  child: ListView(
                    children: [
                      Container(
                        height: 200,
                        color: Colors.amber,
                        child: Text('Mercides Benz'),
                      ),
                      Container(
                        height: 200,
                        color: Colors.blue,
                        child: Text('BMW'),
                      ),
                    ],
                  ),
                ),
                Text('MOBILES'),
                Container(
                  height: 250,
                  child: ListView(
                    children: [
                      Container(
                        height: 200,
                        color: Colors.red,
                        child: Text('Samsung S20 Ultra'),
                      ),
                      Container(
                        height: 200,
                        color: Colors.green,
                        child: Text('Samsung S21 Ultra'),
                      ),
                    ],
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
