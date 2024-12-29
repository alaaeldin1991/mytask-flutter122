import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String count;
  final String label;

  ProfileInfo(this.count, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.white60)),
      ],
    );
  }
}