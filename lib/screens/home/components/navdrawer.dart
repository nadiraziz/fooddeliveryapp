import 'package:flutter/material.dart';

Widget NavDrawer(){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFFFFBD00),
            image: DecorationImage(image: AssetImage('assets/images/ukka_side_menu.png')),
          ), child: null,
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          tileColor: Color(0xFFE5E5E5),
          title: const Text('👋 Hello! farseen..'),
        ),
        ListTile(
          title: const Text('Offer zone'),
        ),
        ListTile(
          title: const Text('My Address'),
        ),
        ListTile(
          title: const Text('My Orders'),
        ),
        ListTile(
          title: const Text('Order History'),
          onTap: (){

          },
        ),
        ListTile(
          title: const Text('My Cart'),
        ),
        ListTile(
          title: const Text('Log Out'),
        ),

      ],
    ),
  );
}