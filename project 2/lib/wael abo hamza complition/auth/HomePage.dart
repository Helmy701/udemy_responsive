import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      'note' : ';alsdkjds;lj;aldsjlkajfsd;ljadsf;lj;adsflj;adsfjl;dfskja',
      'image' : 'images/male.png'
    },
    {
      'note' : ';alsdkjds;lj;aldsa;slfdkjads;lfj;ldsj;gdlsj;lgj;lkgf;ldfjg;lafjd;kgj',
      'image' : 'images/male.png'
    },
    {
      'note' : ';alsdkjds;ljdsafkhlkghrhjrnekuadfuhfdpuhapkrekjgpghprehpikrhk;agtkhraghkrueuhpaker;aldsj',
      'image' : 'images/male.png'
    },
    {
      'note' : ';alsdkjds;lj;alkajgk;gah;kjjkg ai gdprgio hgih agioh iogf gf iogf ; dsj',
      'image' : 'images/male.png'
    },
    {
      'note' : ';alsdkjds;lj;aldsj',
      'image' : 'images/male.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, 'addnote');
            },
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.add
          ),
        ),
        // drawer: Drawer(),
        body: Container(
          child: ListView.builder(
            itemCount: notes.length,
              itemBuilder: (context, index) => Dismissible(
                key: Key('$index'),
                child: ListNotes(
                  notesa: notes[index],
                  ScreenWidtha: ScreenWidth,
                ),
              ),
          ),
        ),
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notesa;
  final ScreenWidtha;
  ListNotes({
    this.notesa,
    this.ScreenWidtha
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: ScreenWidtha - 100,
              child: ListTile(
                title: Text('title'),
                trailing: Icon(
                  Icons.edit
                ),
                subtitle: Text(notesa['note']),
              ),
            ),
          ),
          Image(
            image: AssetImage('assets/images/male.png',),
            fit: BoxFit.fill,
            height: 100,
          )
        ],
      ),
    );
  }
}

