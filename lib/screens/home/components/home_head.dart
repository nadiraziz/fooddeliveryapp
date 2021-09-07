import 'package:flutter/material.dart';

AppBar homeHead() {
  return AppBar(
    toolbarHeight: 150,
    iconTheme: IconThemeData(color: Color(0xFF38465A)),
    backgroundColor: Color(0xFFFAC82D),
    // leading: Icon(Icons.arrow_back, color: Color(0xFF38465A), size: 24),
    title: Row(
      children: [
        Icon(Icons.location_pin, color: Color(0xFF38465A), size: 14),
        SizedBox(width: 10.0),
        Text('Location : ',
            style: TextStyle(fontSize: 14, color: Color(0xFF38465A))),
        Text('Morayur',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xFF38465A),
                fontWeight: FontWeight.bold)),
        SizedBox(width: 10.0),
        Icon(Icons.keyboard_arrow_down, color: Color(0xFF38465A), size: 24),
      ],
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(5.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: TextField(
            style: TextStyle(
                height: 0.8,

            ),
          decoration: new InputDecoration(
            hoverColor: Colors.white,
            focusColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)
            ),
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.white,
            filled: true,
            // border: OutlineInputBorder(
            //   borderSide: BorderSide(color: Colors.white),
            //   borderRadius: BorderRadius.circular(10)
            // ),
            hintText: 'What are you looking for?',
            hintStyle: TextStyle(fontSize: 12, color: Color(0xFF737C89))

          ),
        ),
      ),
    ),
  );
}
