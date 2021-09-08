
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/screens/home/components/bottom_nav.dart';
import 'package:fooddelivery/screens/home/components/home_head.dart';
import 'package:fooddelivery/screens/home/components/navdrawer.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: homeHead(),
      drawer: NavDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                children: <Widget>[
                  CarouselSlider(
                    items: [
                      Image.asset('assets/images/slides/slides1.png'),
                      Image.asset('assets/images/slides/slides2.png'),
                      Image.asset('assets/images/slides/slides3.png')
                    ],
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      // enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      aspectRatio: 2.0,
                      initialPage: 3,
                    ),
                  ),
                ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text('Catogery', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color(0xFF38465A)),),
                      ),
                      Text('Browse products by categories', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Color(0xFF38465A)),),
                    ],
                  ),

                ],
              ),
            ),
            CategoryGrid()
          ],
        ),
      bottomNavigationBar: BottomNav(),
    );
  }
}


class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: [
          for (var category in categoryData)
            Card(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(category.categoryImg),
                  ),
                  Text(category.categoryName, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Color(0xFF38465A))),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}



class CategoryList{
  String categoryName;
  String categoryImg;
  
  CategoryList({required this.categoryName, required this.categoryImg});
}


List<CategoryList> categoryData = <CategoryList> [
  CategoryList(categoryName: 'Grocery', categoryImg: 'assets/images/products/ashirvaad.png'),
  CategoryList(categoryName: 'Restaurant & cafe', categoryImg: 'assets/images/products/resturant.png'),
  CategoryList(categoryName: 'Vegetables', categoryImg: 'assets/images/products/veg.png'),
  CategoryList(categoryName: 'Fruits', categoryImg: 'assets/images/products/fruits.png'),
  CategoryList(categoryName: 'bakery', categoryImg: 'assets/images/products/bake.png'),
  CategoryList(categoryName: 'woman & baby', categoryImg: 'assets/images/products/napkin.png'),
  CategoryList(categoryName: 'Beauty & hygiene', categoryImg: 'assets/images/products/beauty.png'),
  CategoryList(categoryName: 'clean & house holds', categoryImg: 'assets/images/products/cleaning.png'),
  CategoryList(categoryName: 'Electronic & accessories', categoryImg: 'assets/images/products/led.png'),
  CategoryList(categoryName: 'Stationary', categoryImg: 'assets/images/products/stationery.png'),
  CategoryList(categoryName: 'Covid essentials', categoryImg: 'assets/images/products/hygiene.png'),
];

