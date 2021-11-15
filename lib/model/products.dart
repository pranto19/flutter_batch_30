class CatalogModel {
  static List<Item> items = [
    Item(
        id: "1",
        name: "Travel Bags",
        desc:
            "Travel Bags For Boys & Girls Waterproof Teenage Children School Backpack",
        price: "150",
        color: "Navy Blue",
        image:
            "https://static-01.daraz.com.bd/p/8bc20fe8cb4fe72de9a25010cf4d7036.jpg_340x340q80.jpg")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
