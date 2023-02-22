import 'package:flutter/material.dart';

class ArchiveTasks extends StatefulWidget {
  const ArchiveTasks({Key? key}) : super(key: key);

  @override
  State<ArchiveTasks> createState() => _ArchiveTasksState();
}

class _ArchiveTasksState extends State<ArchiveTasks> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Archive tasks',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        )
    );;
  }
}
