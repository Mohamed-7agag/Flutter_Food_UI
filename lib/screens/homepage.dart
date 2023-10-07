// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/screens/cart.dart';
import 'package:flutter_food_ui/screens/details.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55,
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home,color: Color(0xff462b9c),)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
                  }, icon: Icon(Icons.shopping_cart_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.person_outline_outlined)),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(
                      fontFamily: "myfont",
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
                CircleAvatar(
                  radius: 26,
                  backgroundImage: Image.asset("assets/images/por.jpg").image,
                  backgroundColor: Colors.grey[300],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none),
                hintText: "Search",
                hintStyle: TextStyle(fontFamily: "myfont", fontSize: 18),
                filled: true,
                fillColor: Color.fromARGB(137, 224, 224, 224),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      width: MediaQuery.of(context).size.width / 4.77,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Color(0xff644ab5),
                          borderRadius: BorderRadius.circular(18)),
                      child: Image.asset("assets/images/food-plate-2.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "All",
                      style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 15,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      width: MediaQuery.of(context).size.width / 4.77,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(18)),
                      child: Image.asset(
                        "assets/images/burger-3.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Burger",
                      style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 15,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4.77,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(18)),
                      child: Image.asset("assets/images/pizza-slice.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Pizza",
                      style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 15,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4.77,
                      height: 85,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(18)),
                      child: Image.asset("assets/images/meringue.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Dessert",
                      style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 15,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Promotions",
              style: TextStyle(
                fontFamily: 'myfont',
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 15, bottom: 10),
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 142, 105, 251),
                      Color.fromARGB(255, 166, 140, 253),
                    ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Offer",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      Text(
                        "Free Box Of Fries",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "On All Order Above 150\$",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/fries-18.png",
                    width: 140,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Popular",
              style: TextStyle(
                fontFamily: 'myfont',
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => FoodDetail(),
                      ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                      width: MediaQuery.of(context).size.width / 2.52,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(186, 224, 224, 224)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/burger-3.png",
                            width: 125,
                          ),
                          Text(
                            " Beaf Burger",
                            style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " 20\$",
                                style: TextStyle(
                                    fontFamily: 'myfont',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 216, 163, 2)),
                              ),
                              Icon(
                                Icons.add_circle,
                                size: 28,
                                color: Colors.green[700],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                    width: MediaQuery.of(context).size.width / 2.52,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(186, 224, 224, 224)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/pizza-4.png",
                          width: 125,
                        ),
                        Text(
                          " Cheese Pizza",
                          style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " 35\$",
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 216, 163, 2)),
                            ),
                            Icon(
                              Icons.add_circle,
                              size: 28,
                              color: Colors.green[700],
                            )
                          ],
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
}
