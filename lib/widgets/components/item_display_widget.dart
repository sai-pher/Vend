import 'package:flutter/material.dart';
import 'package:vend/app/labels.dart';
import 'package:vend/data/models/item.dart';
import 'package:vend/widgets/components/card_button_widget.dart';

class ItemDisplayWidget extends StatelessWidget {
  final Item item;

  const ItemDisplayWidget({Key? key, required this.item}) : super(key: key);

  _itemDisplay() {
    return SizedBox(
      height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            const Icon(Icons.ac_unit_sharp, color: Colors.black,),
            const Spacer(),
            Text(item.name!, style: const TextStyle(color: Colors.lightBlue),)
          ],
        )
    );
  }

  _itemControl() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () {},
              child: Text(item.price!.toString())
          ),
          FlatButton(
            onPressed: () {},
              child: Text(item.count!.toString())
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CardButtonWidget(
      onTap: () => Navigator.pushNamed(context, itemDetailRoute, arguments: {"itemId": item.name}),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _itemDisplay(),
        ],
      ),
    );
  }
}
