import 'package:flutter/material.dart';



Widget homeHead(){
  return Row(
    children: [
      Icon(Icons.location_pin, color: Color(0xFF38465A), size: 14),
      SizedBox(width: 10.0),
      Text('Location : ', style: TextStyle(fontSize: 14, color: Color(0xFF38465A))),
      Text('Morayur', style: TextStyle(fontSize: 14, color: Color(0xFF38465A), fontWeight: FontWeight.bold)),
      SizedBox(width: 10.0),
      Icon(Icons.keyboard_arrow_down, color: Color(0xFF38465A), size: 24),
    ],
  );
}