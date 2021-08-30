import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/authentication/delivery_address_page.dart';
import 'package:fooddelivery/screens/authentication/login_page.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id = 'signup_page';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              height: 592,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text('Sign Up', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 34)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Create Your New Account', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Color(0xFF506481))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                        // onChanged: (val) => {
                        //   setState(() => email = val)
                        // },
                        // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Color(0xFFFFBD00))
                          ),
                          labelText: 'Name',
                          hintText: "Name",

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
                          obscureText: true,
                          // onChanged: (val) => {
                          //   setState(() => email = val)
                          // },
                          // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                          decoration: InputDecoration(

                            hintText: "Password",
                            suffixIcon: Icon(Icons.visibility),
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Color(0xFFFFBD00))
                            ),
                            labelText: 'Password',
                            filled: true,
                            fillColor: Color.fromRGBO(239, 242, 245, 0.4),
                            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: Color(0xFFE0E5EB))),


                          )
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: InternationalPhoneNumberInput(
                          keyboardType: TextInputType.number,
                          onInputChanged: (PhoneNumber value) {  },
                          inputBorder: OutlineInputBorder(),
                          inputDecoration: InputDecoration(
                            hintText: "Number",
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromRGBO(239, 242, 245, 0.4),
                            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: Color(0xFFE0E5EB))),

                          ),
                          selectorConfig: SelectorConfig(
                            showFlags: true,

                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(

                          decoration: InputDecoration(
                            prefixIcon: numberpre(),
                            hintText: "Number",
                            labelText: 'Number',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFBD00))
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(239, 242, 245, 0.4),
                            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: Color(0xFFE0E5EB))),


                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            hintText: "Location",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFFFBD00))
                            ),
                            labelText: 'Location',
                            // filled: true,
                            fillColor: Color.fromRGBO(239, 242, 245, 0.4),
                            contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15),
                            enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: Color(0xFFE0E5EB))),


                          )
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Container(

                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, DeliveryAddress.id);
                          },
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
                            child: Text('SIGN IN', style: TextStyle(color: Color(0xFF38465A),fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
                Container(
                  child: MaterialButton(
                    padding: EdgeInsets.only(left: 0.0),
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    enableFeedback: false,
                    child: Text('Login here',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Color(0xFFFFBD00))),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}

class numberpre extends StatelessWidget {
  const numberpre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text("91+", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
          ),
        ),
        // Icon(Icons.arrow_drop_down),
      ],
    );
  }
}
