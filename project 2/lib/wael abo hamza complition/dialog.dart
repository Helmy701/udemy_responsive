import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_dialog/awesome_dialog.dart';




class dialog extends StatefulWidget {
  const dialog({Key? key}) : super(key: key);


  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {
  // getData() {
  //   print('start function');
  //   Future.delayed(Duration(seconds: 5),(){
  //     print('wael');
  //   });
  //   print('end function');
  // }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   getData();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Column(
        children: [
          Center(
            child: MaterialButton(
              child: Text('Show Alert'),
              color: Colors.blue,
              onPressed: (){
                AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.rightSlide,
                    title: 'Dialog Title',
                    body: Text('Ahmed Mohamed Helmy'),
                    btnCancelOnPress: () {},
                btnOkOnPress: () {},
                )..show();
              },
            ),
          )
        ],
      ),
    );
  }
}
