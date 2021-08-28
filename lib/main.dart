import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/authentication/forgot_password.dart';
import 'package:fooddelivery/screens/authentication/login_page.dart';
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
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        ForgotPass.id: (context) => ForgotPass(),
      },
    );
  }
}
