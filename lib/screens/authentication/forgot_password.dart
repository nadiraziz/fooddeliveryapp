import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';



class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);
  static String id = 'forgot_page';
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/login_wallpapper.png", fit: BoxFit.fill,scale: 0.9),
          ),
          Positioned(
            top: 108,
            child: Container(
              width: 345,
              height: 396,
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
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(child: Text('Please enter OTP\n we\’ve sent you on +9898534321 Edit', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Color(0xFF506481)))),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 30,
                        style: TextStyle(
                            fontSize: 35,
                          color: Colors.black
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,bottom: 30.0),
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
                            child: Text('NEXT', style: TextStyle(color: Color(0xFF38465A),fontWeight: FontWeight.w500),),
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 10.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text('Didn\'t receive the code', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFF979797)),),
                            Text(' RESEND CODE', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFFFFBD00)),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
