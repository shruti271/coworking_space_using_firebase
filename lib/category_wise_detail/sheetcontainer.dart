import 'package:coworking_space/google_map/map_body.dart';
import 'package:flutter/material.dart';
// import 'package:coworking_space/category_wise_detail/specification_detail.dart';

import 'buy_button_main.dart';
import 'features_detail.dart';
import 'offerdetail_page.dart';
// import 'specification_detail.dart';

class SheetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 110;
    return  DraggableScrollableSheet(
         initialChildSize: 0.55,
      minChildSize: 0.55,
      maxChildSize: 1.0,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
                          child: Container(
      padding: EdgeInsets.only(top: 25,left: 20,right: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          color: Color(0xfff1f1f1)),
      child: Column(        
        children: <Widget>[
          // drawerHandle(),
          Expanded(
              flex: 1,              
              child: ListView(
                controller: scrollController,
                children: <Widget>[
                  Container(
                    // padding: EdgeInsets.all(20),
                    child: Text.rich(TextSpan(
                          text: 'GoOffice 2400 -oftog co-workin',
                          style: TextStyle(
                                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(
                              text: '\n Widget in flutter',
                              style: TextStyle(
                                  fontSize: 20),
                            )
                          ])),
                    ),                
                  offerDetails(sheetItemHeight),
                  // specifications(sheetItemHeight),
                  features(sheetItemHeight),
                  SizedBox(height: 20),
                  GoogleLocation(),
                  SizedBox(height: 220),
                  RentButton(),

                ],
              ),
          )
        ],
      ),
    ),
            );
  });

  // drawerHandle() {
  //   return Container(
  //     margin: EdgeInsets.only(bottom: 25),
  //     height: 3,
  //     width: 65,
  //     decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(15), color: Color(0xffd9dbdb)),
  //   );
  // }

  }
  }
  

