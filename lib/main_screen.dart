import 'package:flutter/material.dart';
import 'constants.dart';
import 'featured_list.dart';
import 'latest_posts.dart';
import 'dart:math';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:carousel_pro/carousel_pro.dart';

var random = Random();

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News App',
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.category, title: "Basket"),
          TabData(iconData: Icons.flash_on, title: "Basket")
        ],
        onTabChangedListener: (position) {
          setState(() {
            // currentPage = position;
          });
        },
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Featured', style: kHeadings),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'View More',
                          style: kLinks,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
//                  child: ListView.builder(
//                    scrollDirection: Axis.horizontal,
//                    primary: false,
//                    itemCount: featured.length,
//                    itemBuilder: (BuildContext context, int num) {
//                      Map features = featured[num];
//                      //print(features["image"]); //for debugging
//                      return Padding(
//                        padding: EdgeInsets.only(right: 10),
//                        child: Container(
//                          margin: EdgeInsets.all(10.0),
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(8.0),
//                            ),
//                            boxShadow: [
//                              BoxShadow(
//                                color: Colors.grey,
//                                offset: Offset(2.0, 2.0),
//                                blurRadius: 10.0,
//                              ),
//                            ],
//                          ),
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.circular(10),
//                            child: Image.asset(
//                              "${features["image"]}",
//                              height: 200,
//                              width: MediaQuery.of(context).size.width - 40,
//                              fit: BoxFit.cover,
//                            ),
//                          ),
//                        ),
//                      );
//                    },
//                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width - 40,
                    child: Carousel(
                      images: featuredImages,
                      borderRadius: true,
                      showIndicator: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Pages', style: kHeadings),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'View More',
                          style: kLinks,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 12),
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int index) {
                      var colorIndex = random.nextInt(pageColors.length);
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: AnimatedContainer(
                              duration: kThemeChangeDuration,
                              constraints: BoxConstraints(
                                minWidth: 70,
                                minHeight: 70,
                              ),
                              decoration: BoxDecoration(
                                color: pageColors[colorIndex],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 5.0,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'P',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, top: 10),
                            child: Text(
                              pages[index],
                              textAlign: TextAlign.left,
                              style: kUnderText,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    12.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Latest', style: kHeadings),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'View More',
                          style: kLinks,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    LatestPosts(
                      image: latestPosts[0]["image"],
                      title: latestPosts[0]["title"],
                      tag: latestPosts[0]["tag"],
                    ),
                    LatestPosts(
                      image: latestPosts[1]["image"],
                      title: latestPosts[1]["title"],
                      tag: latestPosts[1]["tag"],
                    ),
                    LatestPosts(
                      image: latestPosts[2]["image"],
                      title: latestPosts[2]["title"],
                      tag: latestPosts[2]["tag"],
                    ),
                    LatestPosts(
                      image: latestPosts[3]["image"],
                      title: latestPosts[3]["title"],
                      tag: latestPosts[3]["tag"],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
