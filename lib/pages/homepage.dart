import 'package:flutter/material.dart';
import 'package:flutter_app/model/products.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Product List",
            textAlign: TextAlign.center,
          ),
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }));
  }
}
