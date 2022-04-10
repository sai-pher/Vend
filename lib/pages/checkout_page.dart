import 'package:flutter/material.dart';
import 'package:vend/widgets/screens/checkout_screen.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _checkoutPage();
  }

  _checkoutPage() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: const CheckoutScreen(),
    );
  }

}