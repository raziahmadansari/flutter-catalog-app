import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_catelog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criminals'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      drawer: const AppDrawer(),
    );
  }
}
