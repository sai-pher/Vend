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


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          children: widget.items.map((item) => ItemDisplayWidget(item: item)).toList(),
        )
    );
  }
}
