import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listViewSeperator extends StatefulWidget {
  const listViewSeperator({super.key});

  @override
  State<listViewSeperator> createState() => _listViewSeperator();
}

class _listViewSeperator extends State<listViewSeperator> {
  List mobile = [
    {'Name': 'S21 Ultra', 'Screen': '6.8', 'cpu': '8 core'},
    {'Name': 'S20 Ultra', 'Screen': '6.9', 'cpu': '8 core'},
    {'Name': 'S10', 'Screen': '6.1', 'cpu': '8 core'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.blue,
            thickness: 2,
            height: 10,
          ),
          itemCount: mobile.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text("${mobile[i]['Name']}"),
              subtitle: Text("Screen Size: ${mobile[i]['Screen']}"),
              trailing: Text("CPU: ${mobile[i]['cpu']}"),
            );
          },
        ),
      ),
    );
  }
}
