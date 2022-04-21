import 'package:flutter/material.dart';
import 'package:vend/widgets/screens/item_detail_screen.dart';

class ItemDetailPagePage extends StatelessWidget {


  const ItemDetailPagePage({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    String itemId = arguments['itemId'];

    return _itemDetailPagePage(itemId);
  }

  _itemDetailPagePage(String itemId) {
    return ItemDetailScreen(itemId: itemId);
  }

}