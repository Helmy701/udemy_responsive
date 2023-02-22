import 'package:flutter/material.dart';

class searchDelegat extends StatefulWidget {
  const searchDelegat({Key? key}) : super(key: key);

  @override
  State<searchDelegat> createState() => _searchDelegatState();
}

class _searchDelegatState extends State<searchDelegat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SerchDelegate'),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(
                  Icons.search
              ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}
class DataSearch extends SearchDelegate{
  List Names = [
    'Ahmed',
    'Mohamed',
    'Helmy',
    'Ali',
    'Wael',
    'Hamza'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            query = "";
          },
          icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: Icon(
          Icons.arrow_back_ios_new
        ),
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // List filterNames = Names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      // itemCount: query = '' ? Names.length : filterNames.length,
        itemBuilder: (context, index){
          return Container(
            padding: EdgeInsets.all(10),
              child: Text(
                  Names[index],
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
          );
        }
        );
  }

}
