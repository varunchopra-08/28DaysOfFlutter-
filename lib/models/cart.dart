import 'package:chapter_1/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //collection of ids store ids of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getBy(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
