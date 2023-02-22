import 'package:completecourses/shared/components.dart';
import 'package:completecourses/shared/constants.dart';
import 'package:flutter/material.dart';


class NewTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context,index) => buildTaskItem(),
      separatorBuilder: (context,index) => Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[300],
      ),
      itemCount: tasks.length,

    );
  }
}

