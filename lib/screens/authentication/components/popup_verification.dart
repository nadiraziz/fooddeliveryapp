import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';


class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
      return AlertDialog(
        title: Text('VERIFICATION'),
        content: Text('Please enter OTP\nwe’ve sent you on +9898534321 '),
        actions: [
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
                  child: Text('VERIFY OTP', style: TextStyle(color: Color(0xFF38465A),fontWeight: FontWeight.w500),),
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
      );
    }
}
