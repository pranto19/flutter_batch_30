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
        "Travel Bags",
        "Travel Bags For Boys & Girls Waterproof Teenage Children School Backpack",
        "150",
        "Navy Blue",
        "https://static-01.daraz.com.bd/p/8bc20fe8cb4fe72de9a25010cf4d7036.jpg_340x340q80.jpg")
  ];
}
