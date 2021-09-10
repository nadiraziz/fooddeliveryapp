import 'package:flutter/material.dart';


Card addressCard() {
  return Card(
    child: RadioListTile(
      tileColor: Colors.white,
      contentPadding: EdgeInsets.all(20.0),
      groupValue: 1,
      value: 1,
      onChanged: (val) {  },
      title: Text('Farseen , Morayur '),
      subtitle: Text('Kottakunnan (h) po moayur  673642\nland mark : opposite arabic collage'),
    ),
  );
}