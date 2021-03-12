import 'package:flutter/material.dart';
import 'package:coworking_space/category_wise_detail/specification_detail.dart';

import 'features_detail.dart';
import 'offerdetail_page.dart';
import 'specification_detail.dart';
class SheetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 110;
    return Container(
      padding: EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          color: Color(0xfff1f1f1)),
      child: Column(
        children: <Widget>[
          drawerHandle(),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
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
                specifications(sheetItemHeight),
                features(sheetItemHeight),
                SizedBox(height: 220),
              ],
            ),
          )
        ],
      ),
    );
  }

  drawerHandle() {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: 3,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Color(0xffd9dbdb)),
    );
  }

}
  

