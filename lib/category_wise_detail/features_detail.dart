import 'package:flutter/material.dart';
import 'package:coworking_space/category_wise_detail/personal_space_main.dart';

import 'list_all_item_in_way.dart';

 features(double sheetItemHeight) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Features",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: sheetItemHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentCar.features.length,
              itemBuilder: (context, index) {
                return ListItem(
                  sheetItemHeight: sheetItemHeight,
                  mapVal: currentCar.features[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
