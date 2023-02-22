import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool  isUpperCase = true,
  double radios = 10 ,
  VoidCallback? suffixPressed,
  required Function() function,
  required String text,

}) => Container(
  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadiusDirectional.circular(radios),
  ),
  width: width,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),

  ),
);

Widget defaulTextFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  ValueChanged? onSubmit,
  ValueChanged? onChanged,
  bool isPassword = false,
  required FormFieldValidator validate,
  required String lable,
  required IconData prefix,
  IconData? suffix,

}) => TextFormField(
  controller: controller,
  keyboardType: keyboardType,
  obscureText: isPassword,
  onFieldSubmitted: onSubmit,
  onChanged: onChanged,
  validator: validate,
  decoration: InputDecoration(
    labelText: lable,
    // hintText: 'Enter your mail',
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ? IconButton(
      onPressed: (){},
      icon: Icon(
        suffix,
      ),
    ) : null,
    border: OutlineInputBorder(),
    // border: InputBorder.none,
  ),
);
Widget buildTaskItem() =>Padding(
  padding: const EdgeInsets.all(15.0),
  child:   Row(

    children: [

      CircleAvatar(

        radius: 40,

        child: Text('02:00 pm'),

      ),

      SizedBox(

        width: 20,

      ),

      Column(

        mainAxisSize: MainAxisSize.min,

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(

            'Task Title',

            style: TextStyle(

              fontSize: 22,

              fontWeight: FontWeight.bold,

            ),

          ),

          Text(

            '16 march, 2023',

            style: TextStyle(

              color: Colors.grey[600],

            ),

          ),

        ],

      )

    ],

  ),
);
