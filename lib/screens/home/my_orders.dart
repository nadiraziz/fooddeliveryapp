import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/constant.dart';
import 'package:fooddelivery/screens/home/main_home.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);
  static String id = 'my_orders';

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.9,
        backgroundColor: kPrimaryColor,
        toolbarHeight: 80.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0, top: 20.0),
          child: Center(
              child: Text(
            "Order History ",
            style: TextStyle(
                fontSize: 20,
                color: kSecondaryColor,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: new IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: kSecondaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width,

                // height: 194.0,
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
                  color: kWhiteColor,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order ID# : 987654',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text('Delivery method : Local',
                                  style: TextStyle(
                                      fontSize: 16, color: kMutedTextColor)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: [
                                  Text('Estimated time 1 hour',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.green)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 10.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Cancel',
                              style: TextStyle(color: kSecondaryColor)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        color: kMutedTextColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionPanelList(
                        animationDuration: Duration(milliseconds: 1000),
                        elevation: 1,
                        children: [
                          ExpansionPanel(
                            body: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Divider(
                                      color: kMutedTextColor,
                                    ),
                                    ListTile(
                                      leading: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('Items1'),
                                          ),
                                          Text('Delivery Charge')
                                        ],
                                      ),
                                      trailing: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('???750'),
                                          ),
                                          Text('FREE'),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: kMutedTextColor,
                                    ),
                                    SizedBox(height: 20),
                                    ListTile(
                                      leading: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('TOTAL'),
                                          )
                                        ],
                                      ),
                                      trailing: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10.0),
                                            child: Text('???750'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Text(
                                    //   itemData[index].discription,
                                    //   style: TextStyle(
                                    //       color: Colors.grey[700],
                                    //       fontSize: 15,
                                    //       letterSpacing: 0.3,
                                    //       height: 1.3),
                                    // ),
                                  ]),
                            ),
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Container(
                                child: ListTile(
                                  title: Text('Details'),
                                ),
                              );
                              //
                            },
                            isExpanded: itemData[index].expanded,
                          )
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            itemData[index].expanded =
                                !itemData[index].expanded;
                          });
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

List<ItemModel> itemData = <ItemModel>[
  ItemModel(
      headerItem: 'Details',
      colorsItem: kSecondaryColor,
      img: 'assets/images/ashirvaad.png'),
];



class ItemModel {
  bool expanded;
  String headerItem;
  Color colorsItem;
  String img;

  ItemModel(
      {this.expanded: false,
      required this.headerItem,
      required this.colorsItem,
      required this.img});

}

