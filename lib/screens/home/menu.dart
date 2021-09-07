import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/screens/home/components/bottom_nav.dart';
import 'package:fooddelivery/screens/home/components/home_head.dart';
import 'components/navdrawer.dart';




class Menu extends StatefulWidget {

  const Menu({Key? key}) : super(key: key);
  static String id = 'menu';

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeHead(),
      drawer: NavDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.5, right: 160.0, bottom: 20.0),
            child: Text('Restaurants and Cafe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF38465A)),),
          ),

          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: foodData.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.5, vertical: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 113,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(56, 70, 90, 0.2),
                            width: 0.66,
                          ),
                          color: Colors.white
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(foodData[index].foodImg, fit: BoxFit.fill),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric( vertical: 24.0),
                                child: Column(
                                  children: [
                                    Text(foodData[index].foodName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF38465A))),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                                      child: Text(foodData[index].ingredients, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}


class ResturantMenu{
  bool expanded;
  String foodName;
  String ingredients;
  String foodImg;

  ResturantMenu({required this.foodName, required this.ingredients,this.expanded: false, required this.foodImg});
}

List<ResturantMenu> foodData = <ResturantMenu> [
  ResturantMenu(foodName: 'Mexican fried chicken', ingredients: 'Combo, broast , chaines, pizza..', foodImg: 'assets/images/resturants/1.png'),
  ResturantMenu(foodName: 'Sulthan palace', ingredients: 'arabian, broast , chaines, pizza..', foodImg: 'assets/images/resturants/2.png'),
  ResturantMenu(foodName: '31 August resto cafe', ingredients: 'pastry, shawarma, juice, combo', foodImg: 'assets/images/resturants/3.png'),
  ResturantMenu(foodName: 'Razin restaturnt', ingredients: 'biriyani, porotta, juice,  ', foodImg: 'assets/images/resturants/2.png'),
  ResturantMenu(foodName: 'Mexican fried chicken', ingredients: 'Combo, broast , chaines, pizza..', foodImg: 'assets/images/resturants/4.png'),
  ResturantMenu(foodName: 'Mexican fried chicken', ingredients: 'Combo, broast , chaines, pizza..', foodImg: 'assets/images/resturants/3.png'),

];

