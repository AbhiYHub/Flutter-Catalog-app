class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "IPhone 12 Pro",
        desc: "Buy IPhone 12 Pro now",
        price: 999,
        color: "#33505a",
        image:
            "https://i.gzn.jp/img/2020/10/14/iphone-12-homepod-mini-images/a01.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
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
