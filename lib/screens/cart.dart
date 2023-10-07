// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/screens/homepage.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
              IconButton(onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomepageScreen(),
                      ));
              }, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded,color: Color(0xff462b9c),)),
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
              height: 60,
            ),
            Text(
              "Cart Items",
              style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 27,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color.fromARGB(186, 224, 224, 224),
                  ),
                  child: Image.asset("assets/images/soupy-noodles.png"),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cheese Bread",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        " 37\$",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 216, 163, 2)),
                      ),
                      SizedBox(
                        height: 5,
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
                ),
                SizedBox(
                  width: 65,
                ),
                Icon(
                  Icons.delete_rounded,
                  size: 28,
                  color: Colors.red[700],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color.fromARGB(186, 224, 224, 224),
                  ),
                  child: Image.asset("assets/images/burger-3.png"),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Beef Burger",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        " 20\$",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 216, 163, 2)),
                      ),
                      SizedBox(
                        height: 5,
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
                ),
                SizedBox(
                  width: 65,
                ),
                Icon(
                  Icons.delete_rounded,
                  size: 28,
                  color: Colors.red[700],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Order Instructions",
              style: TextStyle(
                fontFamily: 'myfont',
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 35),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                Text(
                  " 57\$",
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 216, 163, 2)),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "CheckOut",
                style: TextStyle(fontFamily: 'myfont', fontSize: 23),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 11, horizontal: 128),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xff462b9c))),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomepageScreen(),
                    ));
                  },
                  child: Text(
                    "Back To Menu",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 18,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
