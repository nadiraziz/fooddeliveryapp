import 'package:flutter/material.dart';


class CategoryButton extends StatelessWidget {
  final data;
  final color;
  const CategoryButton({
    Key? key, this.data, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {}, child: Text(data, style: TextStyle(fontSize:16,color: Color(0xFF38465A)),));
  }
}