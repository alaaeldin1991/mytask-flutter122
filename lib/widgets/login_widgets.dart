import 'package:flutter/material.dart';

class LoginWidgets extends StatelessWidget {
   String my;
   Color co;
    LoginWidgets({required this.co ,required this.my,super.key}) {

   }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(color: co),
      child: Image.asset(my),);
  }
}
