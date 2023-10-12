// ignore_for_file: prefer_final_fields

import 'package:get/get.dart';
import 'item.dart';

class Cart extends GetxController {
  List<Item> _items = [];
  List<String> _foodName = [];
  int _price = 0;
  void add(Item item) {
    _foodName.add(item.name);
    _price += item.price;
    _items.add(item);
    item.count++;
    update();
  }

  void remove(Item item) {
    _price -= (item.price) * (item.count);
    _foodName.remove(item.name);
    _items.remove(item);
    item.count = 0;
    update();
  }

  void plus(Item item) {
    _price += item.price;
    item.count++;
    update();
  }

  void minus(Item item) {
    _price -= item.price;
    item.count--;
    update();
  }

  get foodNames {
    return _foodName;
  }

  get cartItemsLength {
    return _items.toSet().toList().length;
  }

  get totalprice {
    return _price;
  }

  get cartitems {
    return _items.toSet().toList();
  }
}
