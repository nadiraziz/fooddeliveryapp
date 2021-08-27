import 'dart:ui';

import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 345,
            height: 391,
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x2C273814),
                  offset: const Offset(
                    2.0,
                    2.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text('Login', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 34)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('Welcome! happy to see you', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Color(0xFF506481))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: TextFormField(
                      // onChanged: (val) => {
                      //   setState(() => email = val)
                      // },
                      // validator: (val) => val!.isEmpty ? 'Enter a Email': null,

                      decoration: InputDecoration(
                        hintText: "Mobile number",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromRGBO(239, 242, 245, 0.4),
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Color(0xFFE0E5EB))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: TextFormField(
                      // onChanged: (val) => {
                      //   setState(() => email = val)
                      // },
                      // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromRGBO(239, 242, 245, 0.4),
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
                        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Color(0xFFE0E5EB))),


                        )
                      ),
                    ),
                  Container(
                    child: MaterialButton(onPressed: () {  },
                      padding: EdgeInsets.symmetric(vertical: 16),
                      enableFeedback: false,
                      child: Text('Forgot password?',style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,color: Color(0xFF979797))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          // primary: Color(0xFF#FFBD00),
                          primary: Color(0xFFFFBD00),
                          onPrimary: Color(0xFFFFBD00),
                          onSurface: Color(0xFFFFD140),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                        ),

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text('Submit', style: TextStyle(color: Color(0xFF38465A),fontWeight: FontWeight.w500),),
                          ),
                      ),
                    ),
                  ),
                  ],
              ),
            ),
            ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 76),
              child: Row(
                children: [
                  Text('Dont have an account?', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
                  Text(' sign up', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFFFFBD00)),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
