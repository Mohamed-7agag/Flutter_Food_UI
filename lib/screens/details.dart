// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/screens/homepage.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff462b9c),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomepageScreen(),
                  ));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/burger-3.png",
              width: 270,
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 440,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        width: 105,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff462b9c),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 28,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Text(
                        " 20\$",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 223, 170, 10)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " Beaf Burger",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Color(0xff462b9c),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 22,
                              color: Color(0xff462b9c),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.remove_circle_outline_rounded,
                            color: Color(0xff462b9c),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Big Juicy Beef Burger With Cheese, Lettuce, Tomato, Onion and Special Sauce!",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 16,
                        color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add Ons",
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 12),
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/cheese-3.png",
                                width: 76,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(""),
                                  Container(
                                    width: 28,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(18)),
                                        color: Colors.green[600]),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/green-lettuce.png",
                                width: 63,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(""),
                                  Container(
                                    width: 28,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(18)),
                                        color: Colors.green[600]),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/pepsi-12.png",
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(""),
                                  Container(
                                    width: 28,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(18)),
                                        color: Colors.green[600]),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/fries-18.png",
                                width: 75,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(""),
                                  Container(
                                    width: 28,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(18)),
                                        color: Colors.green[600]),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(fontFamily: 'myfont', fontSize: 23),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 11, horizontal: 111),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff462b9c))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
