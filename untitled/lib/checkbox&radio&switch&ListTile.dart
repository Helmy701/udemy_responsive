import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class chekBox extends StatefulWidget {
  const chekBox({super.key});

  @override
  State<chekBox> createState() => _chekBoxState();
}

class _chekBoxState extends State<chekBox> {
  @override
  bool EGY = false;
  bool USA = false;
  var country;
  var cars;
  bool SW1 = false;
  bool SW2 = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsetsDirectional.all(10),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'choose country',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                Text('Egypt'),
                Checkbox(
                  value: EGY,
                  onChanged: (val) {
                    setState(() {
                      EGY = val!;
                    });
                  },
                  activeColor: Colors.red,
                  checkColor: Colors.white,
                )
              ],
            ),
            CheckboxListTile(
              value: USA,
              onChanged: (value) {
                setState(() {
                  USA = value!;
                });
              },
              title: Text('USA'),
              subtitle: Text('america'),
              contentPadding: EdgeInsetsDirectional.only(
                start: 20,
                end: 20,
              ),
              secondary: Icon(Icons.flag),
              isThreeLine: true,
              activeColor: Colors.red,
              selected: USA,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            Text(
              'choose one country',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                Text('Suadia'),
                Radio(
                  value: 'SA',
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value!;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                Text('Suadia'),
                Radio(
                  value: 'SY',
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value!;
                    });
                  },
                )
              ],
            ),
            Text(
              'choose one car',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            RadioListTile(
              value: 'Mercides',
              groupValue: cars,
              onChanged: (value) {
                setState(() {
                  cars = value!;
                });
              },
              title: Text('Mercides'),
              subtitle: Text('Germany'),
              selected: cars == "Mercides" ? true : false,
              activeColor: Colors.blue,
            ),
            RadioListTile(
              value: 'Neasan',
              groupValue: cars,
              onChanged: (value) {
                setState(() {
                  cars = value!;
                });
              },
              title: Text('Neasan'),
              subtitle: Text('Japan'),
              selected: cars == "Neasan" ? true : false,
              activeColor: Colors.blue,
            ),
            RadioListTile(
              value: 'daio',
              groupValue: cars,
              onChanged: (value) {
                setState(() {
                  cars = value!;
                });
              },
              title: Text('Daio'),
              subtitle: Text('Korean'),
              // selected: cars == "daio" ? true : false,
              activeColor: Colors.red,
            ),
            Text(
              'Switch',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                Text('do u wanna open notification'),
                Switch(
                  value: SW1,
                  onChanged: (value) {
                    setState(() {
                      SW1 = value;
                    });
                  },
                  activeColor: Colors.red,
                  activeTrackColor: Colors.orange,
                  inactiveTrackColor: Colors.black,
                  inactiveThumbColor: Colors.green,
                ),
              ],
            ),
            SwitchListTile(
              value: SW2,
              onChanged: (value) {
                setState(() {
                  SW2 = value;
                });
              },
              title: Text('I don\'t know'),
              subtitle: Text('Search'),
              isThreeLine: true,
            ),
            ListTile(
              title: Text('S20 Ultra'),
              subtitle: Text('Samsung'),
              leading: Icon(Icons.mobile_friendly),
              trailing: Text('price 1400\$'),
              isThreeLine: true,
              onTap: () {
                print('Samsung S20 Ultra');
              },
            )
          ]),
        ),
      ),
    );
  }
}
