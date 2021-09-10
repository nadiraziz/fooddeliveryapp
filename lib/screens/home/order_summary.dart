
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/constant.dart';
import 'package:fooddelivery/screens/home/main_home.dart';


class OrderSummary extends StatefulWidget {
  const OrderSummary({Key? key}) : super(key: key);
  static String id = 'order_page';
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        toolbarHeight: 80.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(child: Text("Order summery ", style: TextStyle(fontSize: 20, color: Color(0xFF283547), fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
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
        color: kLightTextColor,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kWhiteColor,
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
                                  color: kPrimaryColor,
                                  padding: EdgeInsets.all(8.0),
                                  onPressed: (){},
                                  borderSide: BorderSide(
                                    color: kYellowColor,
                                  ),
                                )
                            ),
                          ]
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 200.0),
              child: Container(
                  child: Text('Select Delivery Method', style: TextStyle( fontSize: 16))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white10,

                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return LimitedBox(
                      child: Card(
                        child: RadioListTile(
                          groupValue: 1,
                          value: 1,
                          onChanged: (value) {
                            print("CurrentSelected $index");
                            // setState(() {
                            //   isSelected = true;
                            // });
                          },
                          title: new Text('Local Delivery'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      title: Text('Delivery charges'),
                      trailing: Text('FREE', style: TextStyle(color: Colors.green, fontSize: 16.0),),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Sub Total'),
                      trailing: Text('₹750', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 43.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: kButtonOrangeTextColor
                      ),
                      width: MediaQuery.of(context).size.width - 56,
                      height: 56.0,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Text('CHECK OUT',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kWhiteColor)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 190.0),
                            child: Text('₹750',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: kWhiteColor)),
                          ),
                        ],
                      )
                  ),
                  MaterialButton(
                    onPressed: (){},
                    height: 56.0,
                    minWidth: 56,
                    elevation: 0.0,
                    color: kButtonOrangeTextColor,
                    child: Container(
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav()
    );
  }
}

