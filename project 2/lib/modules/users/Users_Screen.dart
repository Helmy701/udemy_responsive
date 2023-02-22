import 'package:flutter/material.dart';
import 'package:project_b/models/user/user_model.dart';

class Users extends StatelessWidget
{
  List<UserModel> users = [
    UserModel(
        id: 1,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 2,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 3,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 4,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 1,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 2,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 3,
        name: 'Ahmed Helmy',
        phone: 01028721580),
    UserModel(
        id: 4,
        name: 'Ahmed Helmy',
        phone: 01028721580),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
      ),

    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
