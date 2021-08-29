// ignore_for_file: unused_field, unnecessary_getters_setters, unnecessary_null_comparison, non_constant_identifier_names

import 'package:tutorials/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;
  //catalog filed
  late CatalogModel _catalog;
//collection of ids - store ids of each items
  final List<int> _itemIds = [];
//get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

//add item

  void add(Item item) {
    _itemIds.add(item.id);
  }

//removce item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
