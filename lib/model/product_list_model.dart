class ProductListModel {
  String? name;
  num?   price;
  int? id;
  String? image;

  ProductListModel(this.name, this.price, this.id, this.image);
  ProductListModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    price = json["price"];
    id = json["id"];
    image = json["image"];
  }
}
