import 'package:flutter/material.dart';
import 'package:vend/data/models/item.dart';
import 'package:vend/widgets/components/item_list_widget.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {

  @override
  Widget build(BuildContext context) {
    return _inventoryScreen();
  }

  static List<Item> items = [
    Item('image', 'name', 'type', 10, 2, 30, 10),
    Item('image', 'name', 'type', 10, 2, 30, 10),
    Item('image', 'lame', 'type', 10, 2, 30, 10),
    Item('image', 'same', 'type', 10, 2, 30, 10),
    Item('image', 'same', 'type', 10, 2, 30, 10),
    Item('image', 'game', 'type', 10, 2, 30, 10),
    Item('image', 'game', 'type', 10, 2, 30, 10),
  ];

  List<Item> _searchItemList = items;

  List<Item>? getItems(List<Item> items, String searchWord) {
    List<Item> res = [];
    if (searchWord.isEmpty){
      res = items;
    } else {
      res = items
          .where((item) => item.name!.toLowerCase().contains(searchWord.toLowerCase()))
          .toList();
    }

    setState(() {
      _searchItemList = res;
    });
  }

  _inventoryScreen() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        TextField(
          onChanged: (value) => getItems(items, value),
          decoration: const InputDecoration(
              labelText: 'Search', suffixIcon: Icon(Icons.search)),
        ),
        const SizedBox(
          height: 20,
        ),
        ItemListWidget(items: _searchItemList)
      ],
    );
  }
}
