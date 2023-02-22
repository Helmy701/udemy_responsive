import 'package:flutter/material.dart';
import 'package:project_b/wael%20abo%20hamza%20complition/ShowModelBotttomSheet.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add node'),
      ),
      body: Container(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text('note title'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.notes
                      ),
                    ),
                  ),
                  TextFormField(
                    minLines: 1,
                    maxLines: 3,
                    maxLength: 500,
                    decoration: InputDecoration(
                      label: Text('note'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                          Icons.notes
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () => showbottomsheet(),
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'add Image for note',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: MaterialButton(
                      onPressed: (){},
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Add Node',
                        style: Theme.of(context).textTheme.headline6
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  showbottomsheet(){
    return showModalBottomSheet(
        context: context,
        builder: (context){
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'please choose image',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text('from Galary'),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text('from Camera'),
                  )
                ],
              ),
            ),
          );
        },
    );
  }
}

