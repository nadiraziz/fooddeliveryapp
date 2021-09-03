
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);
  static String id = 'order_history';
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        backgroundColor: Color(0xFFFAC82D),
        toolbarHeight: 80.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(child: Text("Order History ", style: TextStyle(fontSize: 20, color: Color(0xFF283547), fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Color(0xFF283547),),
            onPressed: () {Navigator.pop(context);},
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 250.0, bottom: 8.0),
            child: Container(
                child: Text('20/02/2020', style: TextStyle( fontSize: 20))),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 3.0),
                width: MediaQuery.of(context).size.width,

                height: 130.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x2C273814),
                      blurRadius: 1.0,
                      spreadRadius: 2.0,
                      offset: const Offset(
                        2.0,
                        2.0,
                      ),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Aashirvaad', style: TextStyle( fontSize: 20)),
                        Text('Wheat Powder', style: TextStyle( fontSize: 14,color: Colors.grey)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/green_dot.png'),
                              SizedBox(width: 10.0),
                              Text('Delivered',style: TextStyle( fontSize: 18,color: Colors.grey))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  trailing: Image.asset('assets/images/ashirvaad.png'),
                ),
              );
            },

          ),
        ],
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

