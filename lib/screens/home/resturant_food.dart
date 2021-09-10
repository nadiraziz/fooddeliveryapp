import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/constant.dart';
import 'package:fooddelivery/screens/home/components/location_bar.dart';
import 'package:fooddelivery/screens/home/components/navdrawer.dart';
import 'package:fooddelivery/screens/home/components/search_nav.dart';
import 'package:fooddelivery/screens/home/main_home.dart';



class FoodMenu extends StatefulWidget {
  final String resturant;

  const FoodMenu({Key? key, required this.resturant}) : super(key: key);
  static String id = 'food_menu_page';

  @override
  _FoodMenuState createState() => _FoodMenuState();
}


class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        iconTheme: IconThemeData(color: kSecondaryColor),
        backgroundColor: kPrimaryColor,
        // leading: Icon(Icons.arrow_back, color: Color(0xFF38465A), size: 24),
        title: LocationBar(),
        leading: Icon(Icons.arrow_back),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: searchNav(),
          ),
        ),
      ),
      drawer: NavDrawer(),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Restaurants and Cafe',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: kSecondaryColor),
                    ),
                    Text(
                      widget.resturant,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: kMutedTextColor),
                    ),
                  ],
                ),
              ),
              Divider(
                color: kMutedTextColor,
              )
            ],
          ),
          Expanded(
            child: GridView.count(
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              childAspectRatio: 0.8,
              crossAxisCount: 2,
              children: [
                foodCart(),
                foodCart(),
                foodCart(),
                foodCart(),
                foodCart(),
                foodCart(),
                foodCart(),
                foodCart(),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}



Widget foodCart(){
  return Card(
    margin: EdgeInsets.all(5),
    shape: Border.all(color: Color(0xFFE5E5E5)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Image.asset(
      'assets/images/restaurants/foodmenu1.png',
      fit: BoxFit.fill, width: double.infinity),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '₹ 62.00',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryColor),
            ),
            Text(
              'Mexican family combo 1',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: kSecondaryColor),
            ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(4.0),
              ),
            ),
            child: Text(
              'Add',
              style: TextStyle(
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      ],
    ),
    );

}