import 'package:coworking_space/category_wise_detail/car.dart';
// import 'package:coworking_space/category_wise_detail/category.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'Product.dart';
// class CartAddItem{
//    final int id;
//   final String title;
//   final List<String> images;  
//   final double  price;  

//   CartAddItem({
//     @required this.id,
//     @required this.images,            
//     @required this.title,
//     @required this.price,
    
//   });
// }


class Cart {
  int id;
  final SpaceInfo product;
  final int numOfItem;
  // /*final*/ int quantity;
  // /*final*/ double price;

  Cart({@required this.id, this.product, @required this.numOfItem});
}

// Demo data for our cart

// final Category demoCarts = 
//   Category(id: 5, name: '5 seat', placeSearchProperty: ['s seat','2 seat'], img: 'imgs/o6.jpg');

class CartBox with ChangeNotifier {
  // CategoryNotifier mycat=Provider.of<CategoryNotifier>(context,listen: false);
  Map<String, Cart> _demoCarts = {
     "5":Cart(id:5,
      product: SpaceInfo(      
        amenities: [
          {Icon(Icons.print_sharp, size: iconSize): "printer"},
          {Icon(Icons.ac_unit_rounded, size: iconSize): "A/C"},
        ],
        spaceinfo: [
          {Icon(Icons.set_meal, size: iconSize): "seat"},
          {Icon(Icons.wifi, size: iconSize): "wifi"}
          ],          
           id: 1, 
           spacename: 'creative',
           price: 200, 
           img:['imgs/o6.jpg'],
           address: 'b-164'),
            numOfItem: 2),
    //  "2":Cart(id:2,product: Category(id: 1, name: '5 seat', placeSearchProperty: ['s seat','2 seat'], img: 'imgs/o6.jpg'), numOfItem: 2),
  };

    Map<String, Cart> get demoCarts {
    return {..._demoCarts};
  }

  int get itemCount {
    return _demoCarts.length;
  }

    void addItem(SpaceInfo pdt, int quantity) {
    // if (!_demoCarts.containsKey(pdt.id)) {
    
      _demoCarts.putIfAbsent(
         '$pdt.id' ,
          () => Cart(
            id: pdt.id,
            product: pdt,            
            numOfItem:quantity,              
       ) );
    // } else {
      print(demoCarts.length);   
    // }
    notifyListeners();
  }

  void removeItem(String id) {
    _demoCarts.remove(id);
    notifyListeners();
  }

  // void removeSingleItem(String id) {
  //   if (!_items.containsKey(id)) {
  //     return;
  //   }
  //   if (_items[id].quantity > 1) {
  //     _items.update(
  //         id,
  //         (existingCartItem) => CartItem(
  //             id: DateTime.now().toString(),
  //             name: existingCartItem.name,
  //             quantity: existingCartItem.quantity - 1,
  //             price: existingCartItem.price));
  //   }
  //   notifyListeners();
  // }
  // 
  
  //   double get totalAmount {
  //   var total = 0.0;
  //   _items.forEach((key, cartItem) {
  //     total += cartItem.price * cartItem.quantity;
  //   });
  //   return total;
  // }
  
    void clear() {
    _demoCarts = {};
    notifyListeners();
  }

    // Cart findById(String id) {
    // return _demoCarts.forEach((key, value) {if(key.toString()==id) return});
  // }
}

