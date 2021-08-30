// ignore_for_file: unused_field, unnecessary_getters_setters, unnecessary_null_comparison, non_constant_identifier_names, override_on_non_overriding_member, prefer_typing_uninitialized_variables

import 'package:tutorials/core/store.dart';
import 'package:tutorials/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
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
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    //var store;
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    //var store;
    store!.cart._itemIds.remove(item.id);
  }
}
