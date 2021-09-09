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
  nested() {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                // expandedHeight: 100.0,
                floating: true,
                pinned: false,
                toolbarHeight: 130,
                iconTheme: IconThemeData(color: Color(0xFF38465A)),
                backgroundColor: Color(0xFFFAC82D),
                // leading: Icon(Icons.arrow_back, color: Color(0xFF38465A), size: 24),
                title: Row(
                  children: [
                    Icon(
                        Icons.location_pin, color: Color(0xFF38465A), size: 14),
                    SizedBox(width: 10.0),
                    Text('Location : ',
                        style: TextStyle(
                            fontSize: 14, color: Color(0xFF38465A))),
                    Text('Morayur',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF38465A),
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 10.0),
                    Icon(Icons.keyboard_arrow_down, color: Color(0xFF38465A),
                        size: 24),
                  ],
                ),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(1.0),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, left: 16.0, right: 16.0),
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
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Color(0xFF737C89))

                          ),
                        )
                    )
                )
            )
          ];
        },
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              CategoryGrid()

            ],
          ),
        )
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: nested(),
        bottomNavigationBar: BottomNav(),
    );
  }
}


class CategoryGrid extends StatelessWidget {
  const CategoryGrid({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text('Catogery', style: TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF38465A)),),
              ),
              Text('Browse products by categories', style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF38465A))),
            ],
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
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
                        Text(category.categoryName, style: TextStyle(fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF38465A))),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );

  }
}


class CategoryList {
  String categoryName;
  String categoryImg;

  CategoryList({required this.categoryName, required this.categoryImg});
}


List<CategoryList> categoryData = <CategoryList>[
  CategoryList(categoryName: 'Grocery',
      categoryImg: 'assets/images/products/ashirvaad.png'),
  CategoryList(categoryName: 'Restaurant & cafe',
      categoryImg: 'assets/images/products/resturant.png'),
  CategoryList(categoryName: 'Vegetables',
      categoryImg: 'assets/images/products/veg.png'),
  CategoryList(
      categoryName: 'Fruits', categoryImg: 'assets/images/products/fruits.png'),
  CategoryList(
      categoryName: 'bakery', categoryImg: 'assets/images/products/bake.png'),
  CategoryList(categoryName: 'woman & baby',
      categoryImg: 'assets/images/products/napkin.png'),
  CategoryList(categoryName: 'Beauty & hygiene',
      categoryImg: 'assets/images/products/beauty.png'),
  CategoryList(categoryName: 'clean & house holds',
      categoryImg: 'assets/images/products/cleaning.png'),
  CategoryList(categoryName: 'Electronic & accessories',
      categoryImg: 'assets/images/products/led.png'),
  CategoryList(categoryName: 'Stationary',
      categoryImg: 'assets/images/products/stationery.png'),
  CategoryList(categoryName: 'Covid essentials',
      categoryImg: 'assets/images/products/hygiene.png'),
];

