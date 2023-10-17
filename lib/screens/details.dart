// ignore_for_file: sort_child_properties_last, unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/dart_detail.dart';
import 'package:flutter_food_ui/item.dart';
import 'package:get/get.dart';

class FoodDetail extends StatefulWidget {
  final String imageUrl;
  final int price;
  final String name;
  final Item item;
  const FoodDetail(
      {super.key,
      required this.imageUrl,
      required this.price,
      required this.name,
      required this.item});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  Cart controller = Get.find<Cart>();
  List<Item> ons = [
    Item(
      name: " Cheese",
      price: 7,
      imageURL: "assets/images/cheese-3.png",
      count: 0,
    ),
    Item(
      name: " Lettuce",
      price: 5,
      imageURL: "assets/images/green-lettuce.png",
      count: 0,
    ),
    Item(
      name: " Pepsi",
      price: 10,
      imageURL: "assets/images/pepsi-12.png",
      count: 0,
    ),
    Item(
      name: " Fries",
      price: 8,
      imageURL: "assets/images/fries-18.png",
      count: 0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff462b9c),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(left: 13),
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              widget.imageUrl,
              width: 260,
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              height: 470,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        width: 105,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff462b9c),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 27,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Text(
                        " ${widget.price}\$",
                        style: const TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 223, 170, 10)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "${widget.name}",
                    style: const TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Big Juicy Beef Burger With Cheese, Lettuce, Tomato, Onion and Special Sauce!",
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 14,
                        color: Colors.grey[600]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Add Ons",
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(top: 12),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/cheese-3.png",
                                width: 66,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(""),
                                  Container(
                                    width: 30,
                                    height: 28,
                                    child: GetBuilder<Cart>(
                                      builder: (controller) => IconButton(
                                        onPressed: () {
                                          if (!controller.foodNames
                                              .contains(ons[0].name)) {
                                            controller.add(ons[0]);
                                          } else {
                                            controller.plus(ons[0]);
                                          }
                                        },
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Colors.green[600],
                                          size: 27,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/green-lettuce.png",
                                width: 55,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(""),
                                  Container(
                                    width: 30,
                                    height: 28,
                                    child: GetBuilder<Cart>(
                                      builder: (controller) => IconButton(
                                        onPressed: () {
                                          if (!controller.foodNames
                                              .contains(ons[1].name)) {
                                            controller.add(ons[1]);
                                          } else {
                                            controller.plus(ons[2]);
                                          }
                                        },
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Colors.green[600],
                                          size: 27,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/pepsi-12.png",
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(""),
                                  Container(
                                    width: 30,
                                    height: 28,
                                    child: GetBuilder<Cart>(
                                      builder: (controller) => IconButton(
                                        onPressed: () {
                                          if (!controller.foodNames
                                              .contains(ons[2].name)) {
                                            controller.add(ons[2]);
                                          } else {
                                            controller.plus(ons[2]);
                                          }
                                        },
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Colors.green[600],
                                          size: 27,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(186, 224, 224, 224),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/fries-18.png",
                                width: 65,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(""),
                                  Container(
                                    width: 30,
                                    height: 28,
                                    child: GetBuilder<Cart>(
                                      builder: (controller) => IconButton(
                                        onPressed: () {
                                          if (!controller.foodNames
                                              .contains(ons[3].name)) {
                                            controller.add(ons[3]);
                                          } else {
                                            controller.plus(ons[3]);
                                          }
                                        },
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Colors.green[600],
                                          size: 27,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      if (!controller.foodNames.contains(widget.item.name)) {
                        controller.add(widget.item);
                      } else {
                        controller.plus(widget.item);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff462b9c)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
