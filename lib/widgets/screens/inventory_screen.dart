import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vend/data/db/item_box.dart';
import 'package:vend/data/models/item.dart';
import 'package:vend/widgets/components/item_display_widget.dart';
import 'package:vend/widgets/components/item_list_widget.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {

  static Size? size;
  static List<Item> items = [
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
    Item(
        image: 'image',
        name: 'name',
        type: 'type',
        count: 10,
        minOrderCount: 2,
        price: 30,
        cost: 10
    ),
  ];

  @override
  Widget build(BuildContext context) {

    for(Item item in items){
      ItemBox.addItem(item);
    }

    size = MediaQuery.of(context).size;

    return _inventoryScreen(size!);
  }


  final List<Item> _searchItemList = items;

  _inventoryScreen(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: ValueListenableBuilder(
        valueListenable: ItemBox.itemBox!.listenable(),
        builder: (BuildContext context, Box<dynamic> value, Widget? child) {
          if (value.isEmpty) {
            return const Center(
              child: Text("Empty list"),
            );
          } else {
            return ListView.builder(
                reverse: true,
                shrinkWrap: true,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  Item item = value.getAt(index);
                  return ListTile(
                    title: ItemDisplayWidget(item: item),
                    leading: Text(
                      item.cost.toString(),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        ItemBox.deleteTodo(index);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Deleted Item")));
                      },
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
