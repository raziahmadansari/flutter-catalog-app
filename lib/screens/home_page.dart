import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_catelog/models/catalog.dart';
import 'package:product_catelog/widgets/drawer.dart';
import 'package:product_catelog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const AppDrawer(),
    );
  }
}
