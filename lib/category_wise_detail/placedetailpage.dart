import 'package:coworking_space/category_wise_detail/car.dart';
import 'package:coworking_space/category_wise_detail/sheetcontainer.dart';
import 'package:flutter/material.dart';
import 'item_detaile_page.dart';

// ignore: must_be_immutable
class LayoutStarts extends StatelessWidget {
  
  final SpaceInfo info;

  LayoutStarts({@required this.info});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[        
          ItemDetailScreen(info: info),
          SheetContainer(info: info), 
        //  SheetContainer(id: info.id, spacename: info.spacename, price: info.price, amenities: info.amenities, spaceinfo: info.spaceinfo, placeofcity: info.placeofcity, overview: info.overview, address: info.address, rating: info.rating),          
        ],
      ),
    );
  }
}
