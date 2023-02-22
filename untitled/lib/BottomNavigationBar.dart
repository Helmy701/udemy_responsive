import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int selectedind = 1;
  List<Widget> pageIndex = [
    Text(
      'Ahmed',
      style: TextStyle(fontSize: 40),
    ),
    Text(
      'Helmy',
      style: TextStyle(fontSize: 60),
    ),
    pagetwo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      bottomNavigationBar: (BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedFontSize: 18,
        currentIndex: selectedind,
        backgroundColor: Colors.blue,
        onTap: (index) {
          setState(() {
            selectedind = index;
          });
          print(selectedind);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ac_unit,
            ),
            label: 'widget one',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'widget two',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Page two',
          ),
        ],
      )),
      body: (pageIndex[selectedind]),
    );
  }
}

class pagetwo extends StatelessWidget {
  const pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
          Text('abc'),
        ],
      ),
    );
  }
}
