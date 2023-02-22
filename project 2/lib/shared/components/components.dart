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
