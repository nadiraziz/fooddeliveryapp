import 'package:flutter/material.dart';
import 'package:fooddelivery/constant.dart';
import 'package:fooddelivery/screens/home/main_home.dart';
import 'package:fooddelivery/screens/home/components/category_button.dart';
import 'package:fooddelivery/screens/home/components/home_head.dart';
import 'package:fooddelivery/screens/home/components/navdrawer.dart';

class GroceryMenu extends StatefulWidget {
  const GroceryMenu({Key? key}) : super(key: key);
  static String id = 'grocery_menu_page';

  @override
  _GroceryMenuState createState() => _GroceryMenuState();
}

class _GroceryMenuState extends State<GroceryMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeHead(),
      drawer: NavDrawer(),
      body: Column(
        children: [
          SingleChildScrollView(
            // physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              color: kWhiteColor,
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                child: Row(
                  children: <Widget>[
                    CategoryButton(data: 'Rice & Grain' ,color: kSecondaryColor),
                    CategoryButton(data: 'cooking oils & ghee', color: kMutedTextColor),
                    CategoryButton(data: 'Spices & powders', color: kMutedTextColor),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                productTile(),
                productTile(),
                productTile(),
                productTile(),
                productTile(),
              ],
            )


          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

Widget productTile(){
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
              child: Image.asset('assets/images/grocery_Sale.png'),
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
              padding: const EdgeInsets.only(top: 60.0, left: 50.0),
              child: MaterialButton(
                color: kPrimaryColor,
                textColor: kWhiteColor,
                child: new Text("ADD", style: TextStyle(fontSize: 14, color: kSecondaryColor),),
                onPressed: () => {},
                splashColor: kSecondaryColor,
              ),
            ),

          ],
        ),
      ),
    ),

  );
}