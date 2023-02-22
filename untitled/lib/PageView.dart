import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _pageViewState();
}

class _pageViewState extends State<pageView> {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(
      initialPage: 1,
      viewportFraction: .9,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView(
              controller: pc,
              // scrollDirection: Axis.vertical,
              onPageChanged: (index) => print(index),
              reverse: false, //default
              children: [
                Image.asset(
                  'images/0x0.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'images/2022-04-18 16.26 copy.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'images/iDcreativedesign_creativity_slider-0x0.jpg',
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () => pc.animateToPage(0,
                duration: Duration(milliseconds: 300), curve: Curves.easeOut),
            child: Text('go to the first page'),
          ),
        ],
      ),
    );
  }
}
