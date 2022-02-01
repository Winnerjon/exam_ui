class Products {
  String type;
  String foodName;
  String image;
  String price;

  Products(
      {required this.type,
      required this.foodName,
      required this.image,
      required this.price});
}

class ItemList {
  static List itemList = [
    Products(
        type: "Diner Steakhouse",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_1.jpeg",
      price: "\$\$\$"
    ),
    Products(
        type: "Fire Hyper",
        foodName: "Brurch * Colofred",
        image: "assets/images/img_5.jpg",
        price: "\$\$"),
    Products(
        type: "Deli Turbo",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_3.jpg",price: "\$"),
    Products(
        type: "Dell Cious",
        foodName: "Brurch * Colofred",
        image: "assets/images/img_2.jpg",
        price: "\$\$\$"),
    Products(
        type: "Dell Hyper",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_5.jpg",
        price: "\$"),
    Products(
        type: "Fire Ciouse",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_3.jpg",
        price: "\$\$"),
    Products(
        type: "Fire Hyper",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_2.jpg",
        price: "\$\$\$"),
    Products(
        type: "Fire Hyper",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_6.jpg",
        price: "\$"),
    Products(
        type: "Diner Hyper",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_8.jpg",
        price: "\$\$\$"),
    Products(
        type: "Fire Hyper",
        foodName: "Sushe * Seamer",
        image: "assets/images/img_8.jpg",
        price: "\$\$"),
  ];
}
