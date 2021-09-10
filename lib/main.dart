import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/authentication/delivery_address_page.dart';
import 'package:fooddelivery/screens/authentication/forgot_password.dart';
import 'package:fooddelivery/screens/authentication/login_page.dart';
import 'package:fooddelivery/screens/authentication/new_password.dart';
import 'package:fooddelivery/screens/authentication/sign_up.dart';
import 'package:fooddelivery/screens/home/cart.dart';
import 'package:fooddelivery/screens/home/category.dart';
import 'package:fooddelivery/screens/home/main_home.dart';
import 'package:fooddelivery/screens/home/grocery_menu.dart';
import 'package:fooddelivery/screens/home/home.dart';
import 'package:fooddelivery/screens/home/list_view_grocery.dart';
import 'package:fooddelivery/screens/home/menu.dart';
import 'package:fooddelivery/screens/home/my_address.dart';
import 'package:fooddelivery/screens/home/my_orders.dart';
import 'package:fooddelivery/screens/home/order_history.dart';
import 'package:fooddelivery/screens/home/order_summary.dart';
import 'package:fooddelivery/screens/home/resturant_food.dart';
import 'package:fooddelivery/screens/home/status.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          accentColor: Color(0xFFFFBD00),
          primaryTextTheme: GoogleFonts.robotoTextTheme()),
      darkTheme: ThemeData(
          brightness: Brightness.dark) ,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        ForgotPass.id: (context) => ForgotPass(),
        NewPass.id: (context) => NewPass(),
        SignUp.id: (context) => SignUp(),
        DeliveryAddress.id: (context) => DeliveryAddress(),
        CartPage.id: (context) => CartPage(),
        OrderSummary.id: (context) => OrderSummary(),
        MyAddress.id: (context) => MyAddress(),
        OrderHistory.id: (context) => OrderHistory(),
        MyOrders.id: (context) => MyOrders(),
        Status.id: (context) => Status(),
        Category.id: (context) => Category(),
        Menu.id: (context) => Menu(),
        GroceryMenu.id: (context) => GroceryMenu(),
        ListGroceryMenu.id: (context) => ListGroceryMenu(),
        FoodMenu.id: (context) => FoodMenu(resturant: 'Mexican fried chicken',),
      },
    );
  }
}
