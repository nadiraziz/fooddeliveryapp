import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/screens/home/cart.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
      Widget widget = Container(); // default
      switch (_currentIndex) {
        case 0:
          widget = CartPage();
          break;

        case 1:
          widget = CartPage();
          break;

        case 2:
          widget = CartPage();
          break;
      }
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFFFAC82D),
          iconTheme: IconThemeData(color: Color(0xFF38465A)),
          title: Row(
          children: [
            Icon(Icons.location_pin, color: Color(0xFF38465A), size: 14),
            SizedBox(width: 10.0),
            Text('Location : ', style: TextStyle(fontSize: 14, color: Color(0xFF38465A))),
            Text('Morayur', style: TextStyle(fontSize: 14, color: Color(0xFF38465A), fontWeight: FontWeight.bold)),
            SizedBox(width: 10.0),
            Icon(Icons.keyboard_arrow_down, color: Color(0xFF38465A), size: 24),
            ],
          ),
        ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFFBD00),
                image: DecorationImage(image: AssetImage('assets/images/ukka_side_menu.png')),
              ), child: null,
            ),
            ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              tileColor: Color(0xFFE5E5E5),
              title: const Text('👋 Hello! farseen..'),
            ),
            ListTile(
              title: const Text('Offer zone'),
            ),
            ListTile(
              title: const Text('My Address'),
            ),
            ListTile(
              title: const Text('My Orders'),
            ),
            ListTile(
              title: const Text('Order History'),
            ),
            ListTile(
              title: const Text('My Cart'),
            ),
            ListTile(
              title: const Text('Log Out'),
            ),

          ],
        ),
      ),
        body: const Center(
          child: Text('Click on the menu icon'),
        ),


      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        currentIndex: _currentIndex,
        onTap:(newIndex) => setState((){_currentIndex = newIndex;}),
        type: BottomNavigationBarType.fixed, // this will be set when a new tab is tapped
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
