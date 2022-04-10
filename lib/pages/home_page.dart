import 'package:flutter/material.dart';
import 'package:vend/app/labels.dart';
import 'package:vend/widgets/components/drawer_widget.dart';
import 'package:vend/widgets/components/nav_bar_widget.dart';
import 'package:vend/widgets/screens/home_page_screen.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _homePage(context);
  }

  _homePage(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Vend"),
      ),
      body: const HomepageScreen(),
      drawer: const DrawerWidget(),
      bottomNavigationBar: const NavBar(),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: () {
          Navigator.pushNamed(context, checkoutRoute);
//            showDialog(context: context, builder: (context) => ExpenseForm());
        },
        tooltip: "Add new sale",
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


}