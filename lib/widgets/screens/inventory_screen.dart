import 'package:flutter/material.dart';
import 'package:vend/data/models/item.dart';
import 'package:vend/widgets/components/item_list_widget.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {

  static Size? size;
  static List<Item> items = [
    Item('image', 'name', 'type', 10, 2, 30, 10),
    Item('image', 'name', 'type', 10, 2, 30, 10),
    Item('image', 'lame', 'type', 10, 2, 30, 10),
    Item('image', 'same', 'type', 10, 2, 30, 10),
    Item('image', 'same', 'type', 10, 2, 30, 10),
    Item('image', 'game', 'type', 10, 2, 30, 10),
    Item('image', 'game', 'type', 10, 2, 30, 10),
  ];

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;

    return _inventoryScreen(size!);
  }


  final List<Item> _searchItemList = items;

  _inventoryScreen(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      child: ItemListWidget(items: _searchItemList),
    );
  }
}
