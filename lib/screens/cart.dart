// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_food_ui/dart_detail.dart';
import 'package:flutter_food_ui/screens/details.dart';
import 'package:flutter_food_ui/screens/homepage.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Cart controller = Get.find<Cart>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            GetBuilder<Cart>(
              init: Cart(),
              builder: (controller) => Text(
                "${controller.cartItemsLength} Cart Items",
                style: const TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 27,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 270,
              child: GetBuilder<Cart>(
                builder: (controller) => ListView.builder(
                  itemCount: controller.cartItemsLength,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => FoodDetail(
                                  imageUrl:
                                      controller.cartitems[index].imageURL,
                                  price: controller.cartitems[index].price,
                                  name: controller.cartitems[index].name,
                                  item: controller.cartitems[index]));
                            },
                            child: Container(
                              width: 100,
                              height: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: const Color.fromARGB(186, 224, 224, 224),
                              ),
                              child: Center(
                                child: Container(
                                  width: 88,
                                  height: 100,
                                  child: Image.asset(
                                    controller.cartitems[index].imageURL,
                                    fit: BoxFit.contain,
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Container(
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${controller.cartitems[index].name}",
                                  style: const TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  " ${controller.cartitems[index].price}\$",
                                  style: const TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 216, 163, 2)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        controller
                                            .plus(controller.cartitems[index]);
                                      },
                                      icon: const Icon(
                                        Icons.add_circle_outline_rounded,
                                        color: Color(0xff462b9c),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GetBuilder<Cart>(
                                      builder: (controller) => Text(
                                        "${controller.cartitems[index].count}",
                                        style: const TextStyle(
                                          fontFamily: 'myfont',
                                          fontSize: 22,
                                          color: Color(0xff462b9c),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller
                                            .minus(controller.cartitems[index]);
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle_outline_rounded,
                                        color: Color(0xff462b9c),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          IconButton(
                            onPressed: () {
                              controller.remove(controller.cartitems[index]);
                            },
                            icon: Icon(
                              Icons.delete_rounded,
                              size: 28,
                              color: Colors.red[700],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Order Instructions",
              style: TextStyle(
                fontFamily: 'myfont',
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 35),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total:",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
                GetBuilder<Cart>(
                  builder: (controller) => Text(
                    " ${controller.totalprice}\$",
                    style: const TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 216, 163, 2)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "CheckOut",
                style: TextStyle(fontFamily: 'myfont', fontSize: 23),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 128),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff462b9c))),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomepageScreen(),
                    ));
                  },
                  child: const Text(
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
