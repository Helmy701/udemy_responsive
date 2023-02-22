import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class gridView extends StatefulWidget {
  const gridView({super.key});

  @override
  State<gridView> createState() => _gridView();
}

class _gridView extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: GridView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
          ],
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
