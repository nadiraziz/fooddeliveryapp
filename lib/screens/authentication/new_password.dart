import 'package:flutter/material.dart';


class NewPass extends StatefulWidget {
  const NewPass({Key? key}) : super(key: key);
  static String id = 'newPass_page';

  @override
  _NewPassState createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
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
              height: 324,
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text('Create New Password', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
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

                          hintText: "New Password",
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
                          obscureText: true,
                        // onChanged: (val) => {
                        //   setState(() => email = val)
                        // },
                        // validator: (val) => val!.isEmpty ? 'Enter a Email': null,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
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
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Text('NEXT', style: TextStyle(color: Color(0xFF38465A),fontWeight: FontWeight.w500),),
                          ),
                        ),
                      ),
                    ),
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
