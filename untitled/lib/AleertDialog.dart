import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertDialo extends StatefulWidget {
  const AlertDialo({super.key});

  @override
  State<AlertDialo> createState() => _AlertDialoState();
}

class _AlertDialoState extends State<AlertDialo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: (Center(
        child: MaterialButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('title'),
                  content: Text('content content content'),
                  titlePadding: EdgeInsetsDirectional.all(20),
                  contentPadding: EdgeInsetsDirectional.all(20),
                  actions: [
                    MaterialButton(
                      onPressed: () {
                        print('ok');
                      },
                      child: Text('Ok'),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        print('Cancel');
                      },
                      child: Text('Cancel'),
                    )
                  ],
                );
              },
            );
          },
          child: Text('show alert'),
        ),
      )),
    );
  }
}
