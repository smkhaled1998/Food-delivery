class CartModel{
  int? id;
  int? price;
  String? name;
  String? img;
   int? quantity;
   bool? isExist;
   String? time;

  CartModel({
    this.id,
    this.name,
    this.price,
    this.img,
    this.quantity,
    this.time,
    this.isExist

  });

  CartModel.fromJson(Map<String,dynamic>json){
    id=json["id"];
    price=json["price"];
    name=json["name"];
    img=json["img"];
    quantity=json["quantity"];
    time=json["time"];
    isExist=json["isExist"];

  }
}