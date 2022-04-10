import 'package:flutter/material.dart';
import 'package:vend/widgets/screens/inventory_screen.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _inventoryPage();
  }

  _inventoryPage() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory"),
      ),
      body: const InventoryScreen(),
    );
  }

}