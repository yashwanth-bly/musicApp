import 'package:flutter/material.dart';

class YourLibrary extends StatelessWidget {
  const YourLibrary({super.key});
  Widget createAppBar(String? message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title:  Text(message!),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.settings),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blueGrey.shade300,
          Colors.black38,
          Colors.black38,
          Colors.black38,
          Colors.black38
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      )),
      child: Column(
        children: [
          createAppBar('Your library'),

        ],
      ),
    );
  }
}