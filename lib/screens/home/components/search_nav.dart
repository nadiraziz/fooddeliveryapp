import 'package:flutter/material.dart';

import '../../../constant.dart';


TextField searchNav() {
  return TextField(
    style: TextStyle(
      height: 0.8,

    ),
    decoration: new InputDecoration(
        hoverColor: kWhiteColor,
        focusColor: kWhiteColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: kWhiteColor)
        ),
        prefixIcon: Icon(Icons.search),
        fillColor: kWhiteColor,
        filled: true,
        // border: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.white),
        //   borderRadius: BorderRadius.circular(10)
        // ),
        hintText: 'What are you looking for?',
        hintStyle: TextStyle(fontSize: 12, color: kHintTextColor)

    ),
  );
}