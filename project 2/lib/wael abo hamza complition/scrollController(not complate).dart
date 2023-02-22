  import 'package:flutter/material.dart';

class scrollController extends StatefulWidget {

  @override
  State<scrollController> createState() => _scrollControllerState();
}

class _scrollControllerState extends State<scrollController> {
  var SC = ScrollController();
@override
  void initState() {
    // TODO: implement initState
    SC = new ScrollController();
    SC.addListener(() {
      print(SC.offset);
      print("Max Scroll : ${SC.position.maxScrollExtent}");
      print("Min Scroll : ${SC.position.minScrollExtent}");

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: ListView.builder(
        controller: SC,
          itemBuilder:(context, index) => Container(
            height: 100,
            color: index.isEven ? Colors.lightBlue : Colors.redAccent,
            margin: EdgeInsets.all(10),
            child: Text('container ${index + 1}'),
          ),
          // separatorBuilder: (context, i) => SizedBox(
          //   height: 20,
          // ),
          itemCount: 20,

      ),

    );
  }
}
