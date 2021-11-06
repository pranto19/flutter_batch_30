import 'package:flutter/material.dart';
import 'package:flutter_app/model/products.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: [
              Text("MeKurt"),
              Text(
                "Product List",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                items: CatalogModel.items[index],
              );
            }));
  }
}
