import 'package:flutter/material.dart';
import 'package:fooddelivery/constant.dart';
import 'package:fooddelivery/screens/home/components/location_bar.dart';
import 'package:fooddelivery/screens/home/components/search_nav.dart';

AppBar homeHead() {
  return AppBar(
    toolbarHeight: 130,
    iconTheme: IconThemeData(color:kSecondaryColor),
    backgroundColor: kPrimaryColor,
    // leading: Icon(Icons.arrow_back, color: Color(0xFF38465A), size: 24),
    title: LocationBar(),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 16.0),
        child: searchNav(),
      ),
    ),
  );
}


