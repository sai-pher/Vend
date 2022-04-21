import 'package:flutter/material.dart';

class ItemDetailScreen extends StatefulWidget {

  final String itemId;
  const ItemDetailScreen({Key? key, required this.itemId }) : super(key: key);

  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {

  @override
  Widget build(BuildContext context) {

    return _itemDetailScreen();
  }

  _itemDetailScreen() {
    String id = widget.itemId;

    return Column(
      children: [
        Text(id),
      ],
    );
  }
}
