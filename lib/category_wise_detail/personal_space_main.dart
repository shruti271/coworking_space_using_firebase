
import 'package:coworking_space/category_wise_detail/sheetcontainer.dart';
import 'package:flutter/material.dart';

import 'animated_card_detail_page.dart';
import 'buy_button_main.dart';
// import 'sheetcontainer.dart';
//---------------------------com kadhi nakh import 'custom_sheet_page.dart';

import 'car.dart';

var currentCar = carList.cars[0];

class PersonalPlaceDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: LayoutStarts(),
    );
  }
}

class LayoutStarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarDetailsAnimation(),        
        SheetContainer(),
        RentButton(),
      ],
    );
  }
}