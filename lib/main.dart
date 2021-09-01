import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/authentication/delivery_address_page.dart';
import 'package:fooddelivery/screens/authentication/forgot_password.dart';
import 'package:fooddelivery/screens/authentication/login_page.dart';
import 'package:fooddelivery/screens/authentication/new_password.dart';
import 'package:fooddelivery/screens/authentication/sign_up.dart';
import 'package:fooddelivery/screens/home/cart.dart';
import 'package:fooddelivery/screens/home/home.dart';
import 'package:fooddelivery/screens/home/my_address.dart';
import 'package:fooddelivery/screens/home/order_summary.dart';
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
      initialRoute: CartPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        ForgotPass.id: (context) => ForgotPass(),
        NewPass.id: (context) => NewPass(),
        SignUp.id: (context) => SignUp(),
        DeliveryAddress.id: (context) => DeliveryAddress(),
        HomePage.id: (context) => HomePage(),
        CartPage.id: (context) => CartPage(),
        OrderSummary.id: (context) => OrderSummary(),
        MyAddress.id: (context) => MyAddress(),
      },
    );
  }
}
