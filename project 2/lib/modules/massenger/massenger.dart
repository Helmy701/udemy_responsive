import 'package:flutter/material.dart';

class Massenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 15,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
                'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20,
                ),
              )
          ),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20,
                ),
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[350],
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 98,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, item)
                  {
                    return buildStatusItem();
                  },
                  separatorBuilder: (context,index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: 7,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    height: 20,
                  ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
  Widget buildChatItem() => Row(
    children: [
      Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Helmy',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello my name is Ahmed Helmy asd;lkjads',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0
                  ),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('02:00 pm')
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStatusItem() => Container(
    width: 65,
    child: //Stack(
    // alignment: AlignmentDirectional.bottomCenter,
    // children: [
    Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 3,
                right: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Ahmed Mohamed Helmy',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
    //   ],
  );

}
