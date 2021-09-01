
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/screens/home/my_address.dart';
import 'package:fooddelivery/screens/home/order_summary.dart';


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
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Card(

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    child: LimitedBox(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('Deliver to Farseen Morayur 673642', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                                Text('Kottakunnan (h) po moayur  6736...', style: TextStyle(fontSize: 14, color:Color(0xFF283547) ),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 34.0),
                              child: OutlineButton(
                                child: Text('Change', style: TextStyle(fontWeight: FontWeight.w400),),
                                color: Color(0xFFFFD140),
                                padding: EdgeInsets.all(8.0),
                                onPressed: (){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyAddress()),
                                );},
                                borderSide: BorderSide(
                                  color: Color(0xFFFFD140),
                                ),
                              )
                              ),
                          ]
                        ),
                    ),
                  )),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0.0),
                  title: Card(
                    margin: EdgeInsets.zero,
                    child: LimitedBox(
                      maxHeight: 140,
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
                                    Text('1', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Color(0xFF38465A)),),
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
                          ),

                        ],
                      ),
                    ),
                  ),

                );
              },
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFFD7D06)
                      ),
                      width: MediaQuery.of(context).size.width - 125,
                      height: 56.0,
                      child: Center(child: Text('PLACE ORDER',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)))
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrderSummary()),
                      );
                    },
                    height: 56.0,
                    minWidth: 125,
                    elevation: 0.0,
                    color: Color(0xFFE67001),
                    child:Center(child: Text('₹750',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white))),
                  )
                ],
              ),
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
