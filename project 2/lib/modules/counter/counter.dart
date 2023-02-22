import 'package:flutter/material.dart';

class Counter extends StatefulWidget
{
  @override
  State<Counter> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int counter = 1;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                  print(counter);
                });
              },
              child: Text(
                'MINUS',
                style: TextStyle(
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
                '$counter',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 50,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: Text(
                  'PLUS'
                ),
            ),
          ],
        ),
      ),
    );
  }
}
