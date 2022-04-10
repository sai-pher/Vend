import 'package:flutter/material.dart';
import 'package:vend/data/models/item.dart';

class ItemDisplayWidget extends StatelessWidget {
  final Item item;

  const ItemDisplayWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Spacer(),
                const Icon(
                  Icons.ac_unit_sharp,
                  color: Colors.black,
                ),
                const Spacer(),
                Text(
                  item.name!,
                  style: const TextStyle(color: Colors.lightBlue),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
