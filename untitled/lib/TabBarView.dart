import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class tapBarView extends StatefulWidget {
  const tapBarView({super.key});

  @override
  State<tapBarView> createState() => _tapBarViewState();
}

class _tapBarViewState extends State<tapBarView>
    with SingleTickerProviderStateMixin {
  // late TabController mycontroller;
  // @override
  // void initState() {
  //   mycontroller = new TabController(
  //     length: 5,
  //     vsync: this,
  //     initialIndex: 1,
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBarView'),
          bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Widget one'),
                  icon: Icon(Icons.snowboarding),
                ),
                Tab(
                  child: Text('Widget two'),
                ),
                Tab(
                  child: Text('Widget Tree'),
                ),
                Tab(
                  child: Text('Widget Four'),
                ),
                Tab(
                  child: Text('Widget Five'),
                ),
              ],
              indicatorColor: Colors.green,
              indicatorWeight: 5,
              isScrollable: true,
              labelColor: Colors.white, //defult
              labelStyle: TextStyle(
                letterSpacing: 1.5,
              ),
              onTap: (i) {
                print(i);
              }),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: [
            Container(
                width: double.infinity,
                color: Colors.red,
                child: Text('Ahmed')),
            Container(
                width: double.infinity,
                color: Colors.yellow,
                child: Text('Mohame')),
            Container(
                width: double.infinity,
                color: Colors.blue,
                child: Text('Helmy')),
            Container(
                width: double.infinity,
                color: Colors.brown,
                child: Text('Ahmed')),
            Container(
                width: double.infinity,
                color: Colors.amber,
                child: Text('El_Yamny')),
          ],
        ),
      ),
    );
  }
}
