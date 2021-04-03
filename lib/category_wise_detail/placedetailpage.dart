// necessary page
import 'package:coworking_space/category_wise_detail/sheetcontainer.dart';
// import 'buy_button_main.dart';
import 'item_detaile_page.dart';
import 'package:flutter/material.dart';
import 'package:coworking_space/constants.dart';

// ignore: must_be_immutable
class LayoutStarts extends StatelessWidget {
  House house;
  List<String> imageList;
  
  // ignore: non_constant_identifier_names
  int imgpath_index;

  LayoutStarts(
    this.house,
    this.imgpath_index,
    this.imageList,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ItemDetailScreen(this.house, this.imgpath_index, this.imageList),          
          SheetContainer(),          
          // RentButton(),
        ],
      ),
    );
  }
}



