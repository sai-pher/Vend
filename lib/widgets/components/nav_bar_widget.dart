import 'package:flutter/material.dart';
import 'package:vend/app/labels.dart';

class NavBar extends StatefulWidget{
  const NavBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => NavBarState();

}

class NavBarState extends State<NavBar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return bottomNavBar();
  }

  bottomNavBar(){
    return BottomAppBar(
//          shape: CircularNotchedRectangle(),
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // TODO: build custom icon button
            Column(
              children: <Widget>[
                IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.list_alt_outlined),
                    onPressed: () =>
                        Navigator.pushNamed(context, inventoryRoute)),
                const Text(
                  'Inventory',
                  textScaleFactor: 0.7,
                )
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.bar_chart),
                    onPressed: () =>
                        Navigator.pushNamed(context, analyticsRoute)),
                const Text(
                  'Analytics',
                  textScaleFactor: 0.7,
                )
              ],
            ),
          ],
        ),
      ),
//          color: Colors.cyan[600],
    );
  }

}