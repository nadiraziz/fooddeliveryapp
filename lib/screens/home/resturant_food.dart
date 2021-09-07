import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/home/components/home_head.dart';
import 'package:fooddelivery/screens/home/components/navdrawer.dart';



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
        iconTheme: IconThemeData(color: Color(0xFF38465A)),
        backgroundColor: Color(0xFFFAC82D),
        // leading: Icon(Icons.arrow_back, color: Color(0xFF38465A), size: 24),
        title: Row(
          children: [
            Icon(Icons.location_pin, color: Color(0xFF38465A), size: 14),
            SizedBox(width: 10.0),
            Text('Location : ',
                style: TextStyle(fontSize: 14, color: Color(0xFF38465A))),
            Text('Morayur',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF38465A),
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 10.0),
            Icon(Icons.keyboard_arrow_down, color: Color(0xFF38465A), size: 24),
          ],
        ),
        leading: Icon(Icons.arrow_back),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(5.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: TextField(
              style: TextStyle(
                height: 0.8,

              ),
              decoration: new InputDecoration(
                  hoverColor: Colors.white,
                  focusColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)
                  ),
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  filled: true,
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  //   borderRadius: BorderRadius.circular(10)
                  // ),
                  hintText: 'What are you looking for?',
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF737C89))

              ),
            ),
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
                          color: Color(0xFF38465A)),
                    ),
                    Text(
                      widget.resturant,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA8AEB7)),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
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
      'assets/images/resturants/foodmenu1.png',
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
                  color: Color(0xFF38465A)),
            ),
            Text(
              'Mexican family combo 1',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF38465A)),
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
              primary: Color(0xFFFFD140),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(4.0),
              ),
            ),
            child: Text(
              'Add',
              style: TextStyle(
                  color: Color(0xFF38465A),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      ],
    ),
    );

}