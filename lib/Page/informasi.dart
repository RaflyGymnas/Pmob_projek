import 'package:flutter/material.dart';

class informasi extends StatelessWidget {

  final List<Container> umum =  List.generate(6, 
  (index) {
    return Container(
      color: Colors.white,
    );
    }
  );

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 5/3
    ));
  }
}