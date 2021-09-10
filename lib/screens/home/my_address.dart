import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/constant.dart';
import 'package:fooddelivery/screens/home/components/address_card.dart';
import 'package:fooddelivery/screens/home/main_home.dart';



class MyAddress extends StatefulWidget {
  const MyAddress({Key? key}) : super(key: key);
  static String id = 'my_address';
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        toolbarHeight: 80.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(child: Text("My Address", style: TextStyle(fontSize: 20, color: kSecondaryColor, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: kSecondaryColor),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
      ),
      body: Container(
        color: kLightTextColor,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kLightTextColor,
              ),
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: OutlineButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text('+ ADD NEW ADDRESS', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: kYellowColor),),
                  ),
                  color: kPrimaryColor,
                  padding: EdgeInsets.all(8.0),
                  onPressed: (){},
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
              )),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 250, bottom: 10.0),
              child: Text('3 saved address', style: TextStyle(fontWeight: FontWeight.w400),),
            ),
            ListView.builder(

              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return addressCard();
              },
              itemCount: 3,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }


}
