import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app/model/products.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({Key? key, required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text(
          "৳${items.price}",
          textScaleFactor: 1.5,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
