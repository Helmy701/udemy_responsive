import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class gridViewBuider extends StatefulWidget {
  const gridViewBuider({super.key});

  @override
  State<gridViewBuider> createState() => _gridViewBuider();
}

class _gridViewBuider extends State<gridViewBuider> {
  List mobile = [
    {'Name': 'S21 Ultra', 'Screen': '6.8', 'cpu': '8 core'},
    {'Name': 'S20 Ultra', 'Screen': '6.9', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mobile.length,
          itemBuilder: (context, i) {
            return ListTile(
              tileColor: Colors.red,
              title: Text("${mobile[i]['Name']}"),
              subtitle: Text("Screen Size: ${mobile[i]['Screen']}"),
              // trailing: Text("CPU: ${mobile[i]['cpu']}"),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            childAspectRatio: 2, // >>neat to be like square if it 1 (defult)
          ),
        ),
      ),
    );
  }
}
