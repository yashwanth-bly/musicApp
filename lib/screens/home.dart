import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_app/services/category_operations.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  List<Widget> createListOfCategory(){
    List<Category> categoryList = CategoryOperations.getCategories();

  }

  Widget createGrid() {
    return SizedBox(
      height: 500,
      child: GridView.count(
        crossAxisCount: 2,
        children: [

        ],
      ),
    );
  }

  Widget createAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: const Text('good morning'),
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
          createAppBar(),
          const SizedBox(
            height: 5,
          ),
          createGrid(),
        ],
      ),
    );
  }
}
