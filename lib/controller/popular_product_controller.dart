import 'package:eccommerce/controller/cart_controller.dart';
import 'package:eccommerce/data/repository/popular_product_repo.dart';
import 'package:eccommerce/models/cart_model.dart';
import 'package:eccommerce/models/products_model.dart';
import 'package:eccommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quiantity = 0;
  int get quiantity => _quiantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quiantity;

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  late CartController _cart;
  // Get all the products from the API if the response is 200
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update();
      print(_popularProductList);
    } else {}
  }

  // Set the quantity value of the product (increment or decrement)
  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quiantity = checkQuantity(_quiantity + 1);
    } else {
      _quiantity = checkQuantity(_quiantity - 1);
    }
    update();
  }

  // Check if the quantity is 0
  int checkQuantity(int quantity) {
    if ((_inCartItems + quantity) < 0) {
      Get.snackbar("Item Count", "You can't reduce more",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      if (_inCartItems > 0) {
        _quiantity = -_inCartItems;
        return _quiantity;
      }
      return 0;
    } else if ((_inCartItems + quantity) > 20) {
      Get.snackbar("Item Count", "You can't add more",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductsModel product, CartController cart) {
    _quiantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existInCar(product);
    if (exist) {
      _inCartItems = _cart.getQuantity(product);
    }
    print("The Quantity in the car is: " + _inCartItems.toString());
    // get the storage _inCartItems
  }

  void addItem(ProductsModel product) {
    _cart.addItem(product, _quiantity);
    _quiantity = 0;
    _inCartItems = _cart.getQuantity(product);
    update();
  }

  int get totalItems {
    return _cart.totalItems;
  }

  List<CartModel> get getItems {
    return _cart.getItems;
  }
}
