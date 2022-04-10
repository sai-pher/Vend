import 'package:flutter/material.dart';
import 'package:vend/pages/analytics_page.dart';
import 'package:vend/pages/checkout_page.dart';
import 'package:vend/pages/home_page.dart';
import 'package:vend/pages/inventory_page.dart';

import 'app/labels.dart';

void main() {
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
        },
        title: 'Vend',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}