import 'package:flutter/material.dart';

import '../constants.dart';

class RentButton extends StatelessWidget {
  // get kfullAppColor => null;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        width: 200,
        child: FlatButton(
          onPressed: () {},
          child: Text(
            "Rent Car",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1.4,
                fontFamily: "arial"),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
          ),
          color: ColorConstant.kfullAppColor,
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}