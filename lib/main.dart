import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vend/pages/analytics_page.dart';
import 'package:vend/pages/checkout_page.dart';
import 'package:vend/pages/home_page.dart';
import 'package:vend/pages/inventory_page.dart';
import 'package:vend/pages/item_detail_page.dart';

import 'app/labels.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  await Hive.openBox(itemBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          homeRoute: (context) => const HomePage(),
          inventoryRoute: (context) => const InventoryPage(),
          checkoutRoute: (context) => const CheckoutPage(),
          analyticsRoute: (context) => const AnalyticsPage(),
          itemDetailRoute: (context) => const ItemDetailPagePage(),
        },
        title: 'Vend',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}
