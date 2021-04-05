import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';

class Category{
  final int id; 
  final String name;
  final List<String> placeSearchProperty;
  final String img;
  
  Category({
    @required this.id,
    @required this.name,
    @required this.placeSearchProperty,
    @required this.img
  });
}

class CategoryNotifier with ChangeNotifier{
 List<Category> _myCat=[
   Category(id: 1,name: "office",placeSearchProperty: ["near metro","private cabin","desk","24 * 4"],img: "imgs/o6.jpg"),
   Category(id: 1,name: "meeting space",placeSearchProperty: ["<5","6 to 15 seat",">16 seat","projector/LED","free coffee/tea"],img: "imgs/o7.jpg"),
 ];

       List<Category> get myCat {
    return [..._myCat];
  }

  int get itemCount {
    return _myCat.length;
  }

}


