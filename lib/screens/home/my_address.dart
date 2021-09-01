import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



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
        backgroundColor: Color(0xFFFAC82D),
        toolbarHeight: 80.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(child: Text("My Address", style: TextStyle(fontSize: 20, color: Color(0xFF283547), fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Color(0xFF283547),),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.yellow[50],
              ),
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: OutlineButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text('+ ADD NEW ADDRESS', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xFFFFBD00)),),
                  ),
                  color: Color(0xFFFFD140),
                  padding: EdgeInsets.all(8.0),
                  onPressed: (){},
                  borderSide: BorderSide(
                    color: Color(0xFFFFD140),
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
                return Card(
                  child: RadioListTile(
                    tileColor: Colors.white,
                    contentPadding: EdgeInsets.all(20.0),
                    groupValue: 1,
                    value: 1,
                    onChanged: (val) {  },
                    title: Text('Farseen , Morayur '),
                    subtitle: Text('Kottakunnan (h) po moayur  673642\nland mark : opposite arabic collage'),
                  ),
                );
              },
              itemCount: 3,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
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
