import 'package:flutter/material.dart';
import 'package:vend/data/models/item.dart';
import 'package:vend/widgets/components/item_display_widget.dart';

class ItemListWidget extends StatefulWidget {
  final List<Item> items;

  const ItemListWidget({Key? key, required this.items}) : super(key: key);

  @override
  _ItemListWidgetState createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {

  List<ItemDisplayWidget> _searchItemList = [];

  List<ItemDisplayWidget>? getItems(String searchWord) {
    List<ItemDisplayWidget> res = [];
    if (searchWord.isEmpty) {
      res = widget.items.map((item) => ItemDisplayWidget(item: item)).toList();
    } else {
      res = widget.items
          .where((item) => item.name!.toLowerCase().contains(searchWord.toLowerCase()))
          .map((item) => ItemDisplayWidget(item: item))
          .toList();
    }

    setState(() {
      _searchItemList = res;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<ItemDisplayWidget> itemList = widget.items.map((item) => ItemDisplayWidget(item: item)).toList();

    // TODO: implement build
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              children: _searchItemList.isNotEmpty ? _searchItemList : itemList,
            )
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          onChanged: (value) => getItems(value),
          decoration: const InputDecoration(
              labelText: 'Search', suffixIcon: Icon(Icons.search)),
        ),
        const SizedBox(
          height: 20,
        ),
      ]
    );

  }
}
