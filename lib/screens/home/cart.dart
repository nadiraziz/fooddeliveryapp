
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);
  static String id = 'cart_page';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAC82D),
        toolbarHeight: 80.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(child: Text("My Cart", style: TextStyle(fontSize: 20, color: Color(0xFF283547), fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Color(0xFF283547),),
            onPressed: () {},
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFE5E5E5),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 3),
              title: Card(
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Image.asset('assets/images/boost.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text('Aashivaad atta',textAlign: TextAlign.left, style: TextStyle(color: Color(0XFF38465A), fontSize: 16,fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('Wheat Powder',textAlign: TextAlign.left, style: TextStyle(color: Color(0XFF38465A), fontSize: 14, fontWeight: FontWeight.w400)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('1 kg',textAlign: TextAlign.left),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Text('₹65'),
                              SizedBox(width: 10.0),
                              Text('₹75', style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400,decoration: TextDecoration.lineThrough)),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 40.0),
                      child: Row(

                        children: [
                          ButtonBar(
                            children: [
                              MaterialButton(
                                height: 32.0,
                                minWidth: 32.0,
                                color: Color(0xFFFAC82D),
                                textColor: Colors.white,
                                child: new Text("-", style: TextStyle(fontSize: 20, color: Color(0xFF38465A)),),
                                onPressed: () => {},
                                splashColor: Color(0xFF38465A),
                              ),
                              Text('1', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color(0xFF38465A)),),
                              // ElevatedButton(
                              //   onPressed: (){},
                              //   child: Text('+'))
                              MaterialButton(
                                height: 32.0,
                                minWidth: 32.0,
                                color: Color(0xFFFAC82D),
                                textColor: Colors.white,
                                child: new Text("+", style: TextStyle(fontSize: 20, color: Color(0xFF38465A)),),
                                onPressed: () => {},
                                splashColor: Color(0xFF38465A),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            );
          },
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
