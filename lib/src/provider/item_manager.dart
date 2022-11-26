import 'package:flutter/material.dart';
import 'package:furniture_app/src/provider/item.dart';
import 'package:furniture_app/src/ui/modern_living_screen/task_item.dart';

class ItemManager extends ChangeNotifier {
  final List<Item> items;
  int index = 0;
  ItemManager({
    required this.items,
  });
  void addItem(Item item){
   items.add(item);
   notifyListeners();
  }
  void removeItem(Item item){
    items.remove(item);
    notifyListeners();
  }
  void updateItem(Item item, bool isFinish, int index){
    
  }
}
