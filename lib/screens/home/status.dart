import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Status extends StatefulWidget {

  const Status({Key? key}) : super(key: key);
  static String id = 'status';
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AddtoCart,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        currentIndex: _currentIndex,
        onTap: (newIndex) => setState(() {
          _currentIndex = newIndex;
        }),
        type: BottomNavigationBarType.fixed,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home_icon.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/category_icon.png'),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/offer_icon.png'),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/cart_icon.png'),
            label: 'Cart',
          )
        ],
      ),
    );
  }
}


StatusContent success = StatusContent(statusImg: 'assets/images/success.png',statusSubtitle: 'Your order as placed successfully . ', statusTitle: 'Order placed',buttonText: 'CONTINUE SHOPING',);
StatusContent AddtoCart = StatusContent(statusImg: 'assets/images/cart_status.png',statusSubtitle: 'explore our products and exciting new offers today! ', statusTitle: 'Your cart is empty',buttonText: 'Start shoping',);
StatusContent netWorkError = StatusContent(statusImg: 'assets/images/network_error.png',statusSubtitle: 'connect  to the internet to browse & shop our products', statusTitle: 'oops something wrong ',buttonText: 'Try again',);
class StatusContent extends StatelessWidget {
  final String statusTitle;
  final String statusSubtitle;
  final String statusImg;
  final String buttonText;

  const StatusContent({Key? key, required this.statusTitle, required this.statusSubtitle, required this.statusImg, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(statusImg),
            ),
            Text(statusTitle, style: TextStyle(color: Color(0xFF38465A), fontSize: 20, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(statusSubtitle, style: TextStyle(color: Color(0xFF38465A), fontSize: 16), textAlign: TextAlign.center,),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // primary: Color(0xFF#FFBD00),
                  primary: Color(0xFFFFBD00),
                  onPrimary: Color(0xFFFFBD00),
                  onSurface: Color(0xFFFFD140),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                ),

                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(buttonText, style: TextStyle(color: Color(0xFF38465A), fontSize: 16),),
                )),
          ],
        ),
      ),
    );
  }
}