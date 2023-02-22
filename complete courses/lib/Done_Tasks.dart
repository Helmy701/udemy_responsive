import 'package:flutter/material.dart';

class DoneTasks extends StatefulWidget {
  const DoneTasks({Key? key}) : super(key: key);

  @override
  State<DoneTasks> createState() => _DoneTasksState();
}

class _DoneTasksState extends State<DoneTasks> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Done tasks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        )
    );
  }
}