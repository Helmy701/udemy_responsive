import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  var selectedContry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: DropdownButton(
          items: ['USA', 'EGY', 'SA', 'UAE', 'SA']
              .map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedContry = value!;
            });
          },
          value: selectedContry,
          hint: Text('Choose country'),
          // underline: Divider(),
          isExpanded: false,
          dropdownColor: Colors.red,
          icon: Icon(Icons.arrow_downward_sharp),
        ),
      ),
    );
  }
}
