class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductsModel> _products;

  List<ProductsModel> get products => _products;

  Product(
      {required totalSize,
      required typeId,
      required offset,
      required products}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _offset = offset;
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductsModel>[];
      json['products'].forEach((v) {
        _products.add(ProductsModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_size'] = _totalSize;
    data['type_id'] = _typeId;
    data['offset'] = _offset;
    data['products'] = _products.map((v) => v.toJson()).toList();
    return data;
  }
}

class ProductsModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  late String img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductsModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      required this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['stars'] = stars;
    data['img'] = img;
    data['location'] = location;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['type_id'] = typeId;
    return data;
  }
}
