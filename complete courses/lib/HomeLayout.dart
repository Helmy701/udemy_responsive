import 'dart:ffi';

import 'package:completecourses/Done_Tasks.dart';
import 'package:completecourses/New_Task.dart';
import 'package:completecourses/archive_Tasks.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';
import 'shared/constants.dart';




class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  late Database database;
  int currentBar = 0;
  List<Widget> Screens =
      [
        NewTasks(),
        DoneTasks(),
        ArchiveTasks()
      ];
  List<dynamic> title =
      [
        'New Task',
        'Done Task',
        'Archive Task'
      ];
  var scafflodKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShow = false;
  IconData fabIcon = Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    creatDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafflodKey,
      appBar: AppBar(
        title: Text(title[currentBar]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async
        {
          // try
          // {
          //   var name = await getName();
          //   print(name);
          //   print('osama');
          //   throw('Some error');
          // }
          // catch(error)
          // {
          //   print('error ${error.toString()}');
          // }
          // getName().then((value) {
          //   print(value);
          //   print('osama');
          //   throw('I made error');
          // }).catchError((error){
          //   print('error ${error.toString()}');
          // });
          if(isBottomSheetShow)
            {
              if(formKey.currentState!.validate())
                {
                  insertToDatabase(
                    title: titleController.text,
                    date: dateController.text,
                    time: timeController.text,
                  ).then((value)
                  {
                    Navigator.pop(context);
                    isBottomSheetShow = false;
                    setState(() {
                      fabIcon = Icons.edit;
                    });
                  });

                }
            }
          else
            {
              scafflodKey.currentState?.showBottomSheet(
                      (context) => Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  controller: titleController,
                                  keyboardType: TextInputType.text,
                                  validator: (value){
                                    if(value!.isEmpty)
                                      {
                                        return 'title must not be empty';
                                      }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    label: Text('Task Title'),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                      Icons.title
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  controller: timeController,
                                  keyboardType: TextInputType.datetime,
                                  validator: (value){
                                    if(value!.isEmpty)
                                    {
                                      return 'time must not be empty';
                                    }
                                    return null;
                                  },
                                  onTap: (){
                                    showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                    ).then((value){
                                      timeController.text = value!.format(context);
                                      print(value?.format(context));
                                    });
                                  },
                                  decoration: InputDecoration(
                                    label: Text('time time'),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                        Icons.watch_later_outlined
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  controller: dateController,
                                  keyboardType: TextInputType.datetime,
                                  validator: (value){
                                    if(value!.isEmpty)
                                    {
                                      return 'date must not be empty';
                                    }
                                    return null;
                                  },
                                  onTap: (){
                                    showDatePicker(context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.parse('2023-16-03')
                                    ).then((value){
                                      print(DateFormat.yMMMd().format(value!));
                                      dateController.text = DateFormat.yMMMd().format(value!);
                                    });
                                  },
                                  decoration: InputDecoration(
                                    label: Text('date time'),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(
                                        Icons.calendar_today,
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                elevation: 20,
              ).closed.then((value){
                isBottomSheetShow = false;
                setState(() {
                  fabIcon = Icons.edit;
                });
              });
              isBottomSheetShow = true;
              setState(() {
                fabIcon = Icons.add;
              });
            }

        },
        child: Icon(
          fabIcon,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: currentBar,
          onTap: (index){
          setState(() {
            currentBar = index;
          });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu
                ),
              label: 'Tasks'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.check_circle_outline
                ),
                label: 'Done'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.archive_outlined
                ),
                label: 'archive'
            ),

          ]
      ),
      body: tasks.length == 0 ? CircularProgressIndicator() : Screens[currentBar],

    );
  }
  Future<String> getName() async
  {
    return 'Ahmed Helmy';
  }
  void creatDatabase() async
  {
    database = await openDatabase(
        'todo.db',
      version: 1,
      onCreate: (database, version) 
      {
        print('database created');
        database.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)').then((value)
        {
          print('table created');
        }).catchError((error){
          print('Error when creating table ${error.toString()}');
        });
      },
      onOpen: (database)
      {
        getData(database).then((value)
        {
          tasks = value;
          print(tasks);
        });
        print('database opened');
      }
    );
  }
  Future insertToDatabase({
    required String title,
    required String time,
    required String date,
}) async
  {
    return await database.transaction((txn) {
      txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$time", "$date", "new")'
      ).then((value){         // value it refere to id number
        print('$value inserted success');
      }).catchError((error){
        print('Error when inserted new recourd ${error.toString()}');
      });
      return Future(() => null);
    });
  }
  Future<List<Map>> getData(database)async
  {
    return await database.rawQuery('SELECT * FROM tasks');
  }

}
