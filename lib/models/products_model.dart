class Product{
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List <ProductModel> _products;
  List <ProductModel> get products => _products;


  Product({required totalSize,required typeId,required offset,required products}){
    this._totalSize=totalSize;
    this._typeId=typeId;
    this._offset=offset;
    this._products=products;
  }
  Product.fromJson(Map<String,dynamic>json){
    _totalSize=json["totalSize"];
    _typeId=json["typeId"];
    _offset=json["offset"];

    if (json["products"]!=null){
      _products=<ProductModel>[];
      json["products"].forEach((e){
        _products.add(ProductModel.fromJson(e));
      }
      );
    }
  }
}

class ProductModel{

  int? id;
  int? price;
  int? stars;
  String? name;
  String? description;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  String? typeId;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.createdAt,
    this.description,
    this.img,
    this.location,
    this.stars,
    this.typeId,
    this.updatedAt,
  });

  ProductModel.fromJson(Map<String,dynamic>json){
    id=json["id"];
    typeId=json["typeId"];
    price=json["price"];
    stars=json["stars"];
    name=json["name"];
    description=json["description"];
    img=json["img"];
    createdAt=json["createdAt"];
    updatedAt=json["updatedAt"];
    location=json["location"];
  }
}
