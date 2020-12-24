import 'package:flutter/material.dart';
import 'package:provider_uygulamasi/models/item.dart';

class ItemData with ChangeNotifier{
  final List<Item> items=[
    Item(title: 'Peynır al'),
    Item(title: 'Faturayı öde'),
    Item(title: 'Ananıda al git'),
  ];

  void toggleStatus(int index){
    items[index].toggleStatus();
    notifyListeners();

  }

  void addItem(String title){
    items.add(Item(title: title));
    notifyListeners();

  }
  void deleteItem(int index){
    items.removeAt(index);
    notifyListeners();

  }

}