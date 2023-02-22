import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class pageViewBuilder extends StatefulWidget {
  const pageViewBuilder({super.key});

  @override
  State<pageViewBuilder> createState() => _pageViewBuilderState();
}

class _pageViewBuilderState extends State<pageViewBuilder> {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(
      initialPage: 1,
      viewportFraction: .9,
    );
    super.initState();
  }

  List images = [
    {'URL': 'images/0x0.jpg'},
    {'URL': 'images/2022-04-18 16.26 copy.jpg'},
    {'URL': 'images/iDcreativedesign_creativity_slider-0x0.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) =>
                  Image.asset(images[index]['URL']),
              controller: pc,
              // scrollDirection: Axis.vertical,
              onPageChanged: (index) => print(index),
              reverse: false, //default
            ),
          ),
          MaterialButton(
            onPressed: () => pc.animateToPage(0,
                duration: Duration(milliseconds: 300), curve: Curves.easeOut),
            child: Text('go to the first page'),
          ),
          Form(
            child: Column(
              children: [TextFormField()],
            ),
          ),
        ],
      ),
    );
  }
}
