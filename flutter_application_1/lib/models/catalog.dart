class item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;

  item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
  }); 
  
  
}

final products = [
  item(
      id: "Ronak01",
      name: "android",
      desc: "one pluse",
      price: 3000,
      color: "#33505a")
];
