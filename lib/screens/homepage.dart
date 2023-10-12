// ignore_for_file:  sized_box_for_whitespace,  sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:flutter_food_ui/dart_detail.dart';
import 'package:flutter_food_ui/item.dart';
import 'package:flutter_food_ui/screens/cart.dart';
import 'package:flutter_food_ui/screens/details.dart';
import 'package:get/get.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  Cart contrller = Get.put(Cart(), permanent: true);
  List<Item> foodItems = [
    Item(
      name: " Beaf Burger",
      price: 20,
      imageURL: "assets/images/burger-3.png",
      count: 0,
    ),
    Item(
      name: " Cheese Pizza",
      price: 35,
      imageURL: "assets/images/pizza-4.png",
      count: 0,
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomepageScreen();
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 55,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomepageScreen();
                      currentTab = 0;
                    });
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: currentTab == 0 ? const Color(0xff462b9c) : null,
                    size: currentTab == 0 ? 30 : 25,
                  )),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = const CartScreen();
                      currentTab = 2;
                    });
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: currentTab == 2 ? const Color(0xff462b9c) : null,
                    size: currentTab == 2 ? 30 : 25,
                  )),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.person_outline_outlined)),
            ],
          ),
        ),
      ),
      body: currentTab == 2
          ? const CartScreen()
          : PageStorage(
              bucket: bucket,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Menu",
                          style: TextStyle(
                              fontFamily: "myfont",
                              fontSize: 35,
                              fontWeight: FontWeight.w500),
                        ),
                        CircleAvatar(
                          radius: 26,
                          backgroundImage:
                              Image.asset("assets/images/por.jpg").image,
                          backgroundColor: Colors.grey[300],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        hintText: "Search",
                        hintStyle:
                            const TextStyle(fontFamily: "myfont", fontSize: 18),
                        filled: true,
                        fillColor: const Color.fromARGB(137, 224, 224, 224),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width / 4.77,
                              height: 85,
                              decoration: BoxDecoration(
                                  color: const Color(0xff644ab5),
                                  borderRadius: BorderRadius.circular(18)),
                              child:
                                  Image.asset("assets/images/food-plate-2.png"),
                            ),
                            const SizedBox(
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
                              padding: const EdgeInsets.all(7),
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
                            const SizedBox(
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
                              child:
                                  Image.asset("assets/images/pizza-slice.png"),
                            ),
                            const SizedBox(
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
                            const SizedBox(
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
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Promotions",
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: const LinearGradient(
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
                          const Column(
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
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Popular",
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                builder: (context) => FoodDetail(
                                  item: foodItems[0],
                                  imageUrl: "assets/images/burger-3.png",
                                  name: "Beaf Burger",
                                  price: 20,
                                ),
                              ));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              width: MediaQuery.of(context).size.width / 2.52,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(186, 224, 224, 224)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/burger-3.png",
                                    width: 125,
                                  ),
                                  const Text(
                                    " Beaf Burger",
                                    style: TextStyle(
                                        fontFamily: 'myfont',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        " 20\$",
                                        style: TextStyle(
                                            fontFamily: 'myfont',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 216, 163, 2)),
                                      ),
                                      GetBuilder<Cart>(
                                        builder: (controller) => IconButton(
                                          onPressed: () {
                                            if (!controller.foodNames
                                                .contains(foodItems[0].name)) {
                                              controller.add(foodItems[0]);
                                            } else {
                                              controller.plus(foodItems[0]);
                                            }
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: 28,
                                            color: Colors.green[700],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                builder: (context) => FoodDetail(
                                    item: foodItems[1],
                                    imageUrl: "assets/images/pizza-4.png",
                                    name: "Cheese Pizza",
                                    price: 35),
                              ));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              width: MediaQuery.of(context).size.width / 2.52,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(186, 224, 224, 224)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/pizza-4.png",
                                    width: 125,
                                  ),
                                  const Text(
                                    " Cheese Pizza",
                                    style: TextStyle(
                                        fontFamily: 'myfont',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        " 35\$",
                                        style: TextStyle(
                                            fontFamily: 'myfont',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 216, 163, 2)),
                                      ),
                                      GetBuilder<Cart>(
                                        builder: (controller) => IconButton(
                                          onPressed: () {
                                            if (!contrller.foodNames
                                                .contains(foodItems[1].name)) {
                                              controller.add(foodItems[1]);
                                            } else {
                                              controller.plus(foodItems[1]);
                                            }
                                          },
                                          icon: Icon(
                                            Icons.add_circle,
                                            size: 28,
                                            color: Colors.green[700],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
