import 'package:flutter/material.dart';

class showModelBottomSheet extends StatefulWidget {
  const showModelBottomSheet({Key? key}) : super(key: key);

  @override
  State<showModelBottomSheet> createState() => _showModelBottomSheetState();
}

class _showModelBottomSheetState extends State<showModelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: MaterialButton(
            child: Text('Show model bottom sheet'),
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height: 100,
                  child: Text('Bottom sheet'),
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
