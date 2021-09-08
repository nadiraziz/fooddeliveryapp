import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/home/components/bottom_nav.dart';
import 'package:fooddelivery/screens/home/components/home_head.dart';
import 'package:fooddelivery/screens/home/components/navdrawer.dart';

class ListGroceryMenu extends StatefulWidget {
  const ListGroceryMenu({Key? key}) : super(key: key);
  static String id = 'list_grocery_menu_page';

  @override
  _ListGroceryMenuState createState() => _ListGroceryMenuState();
}

class _ListGroceryMenuState extends State<ListGroceryMenu> {
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
              color: Color(0xFFF9FAFB),
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                        onPressed: () {}, child: Text('Rice & grains', style: TextStyle(fontSize:16,color: Color(0xFF38465A)),)),
                    MaterialButton(
                        onPressed: () {}, child: Text('cooking oils & ghee', style: TextStyle(fontSize:16,color: Color(0xFFA5ABB5)),)),
                    MaterialButton(
                        onPressed: () {}, child: Text('Spices & powders', style: TextStyle(color: Color(0xFFA5ABB5)))),
                    MaterialButton(onPressed: () {}, child: Text('Rice')),
                    MaterialButton(onPressed: () {}, child: Text('Rice')),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 3,
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              children: [
                foodCard(),
                foodCard(),
                foodCard(),
                foodCard(),
                foodCard(),
                foodCard(),
              ],
            ),
          ),
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
                color: Color(0xFFFAC82D),
                textColor: Colors.white,
                child: new Text("ADD", style: TextStyle(fontSize: 14, color: Color(0xFF38465A)),),
                onPressed: () => {},
                splashColor: Color(0xFF38465A),
              ),
            ),

          ],
        ),
      ),
    ),

  );
}





Widget foodCard(){
  return Card(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: [
          Image.asset('assets/images/products/napkin.png'),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10.0,vertical: 5.0),
            child: Column(
              children: [
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
                Text('STAYFREE COTTONY SOFT COVER RAGULAR ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF38465A))),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 5.0),
                //   child: Text(foodData[index].ingredients, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey)),
                // )
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Stack(
                    children: [
                      MaterialButton(
                        minWidth:120,
                        color: Color(0xFFFAC82D),
                        textColor: Colors.white,
                        child: new Text("ADD", style: TextStyle(fontSize: 12, color: Color(0xFF38465A)),),
                        onPressed: () => {},
                        splashColor: Color(0xFF38465A),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:115),
                        child: MaterialButton(
                          minWidth:35,
                          color: Color(0xFFFFBD00),
                          textColor: Colors.white,
                          child: new Text("+", style: TextStyle(fontSize: 12, color: Color(0xFF38465A)),),
                          onPressed: () => {},
                          splashColor: Color(0xFF38465A),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}