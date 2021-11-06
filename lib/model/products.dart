class Item {
  final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

class CatalogModel {
  static final items = [
    Item(
        "p001",
        "Backpack",
        "Outdoor Small Mini Backpack Daypack Bookbags 10L",
        "155",
        "blue",
        "https://static-01.daraz.com.bd/p/44fac340a6fdceb7925d22b006a3aa22.jpg_340x340q80.jpg_.webp")
  ];
}