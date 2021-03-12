import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'floating_widget.dart';
import 'menu_widget.dart';

// ignore: must_be_immutable
class ItemDetailScreen extends StatelessWidget {
  House house;
  List<String> imageList;
  // ignore: non_constant_identifier_names
  int imgpath_index;
  ItemDetailScreen(
    this.house,
    this.imgpath_index,
    this.imageList,
  );
  final houseArray = [
    "1.416",
    "4",
    "2",
    "2",
    "3",
  ];
  final typeArray = [
    "Square foot",
    "Bedrooms",
    "Bedrooms",
    "Garage",
    "Kitchen",
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorConstant.kWhiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FloatingWidget(
              leadingIcon: Icons.mail,
              txt: "Message",
            ),
            FloatingWidget(
              leadingIcon: Icons.phone,
              txt: "Call",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 0, bottom: 10),
                        child: SizedBox(
                          height: 300.0,
                          width: screenWidth,
                          child: Carousel(
                            images: [
                              ExactAssetImage(imageList[imgpath_index]),
                              ExactAssetImage(imageList[0]),
                              ExactAssetImage(imageList[1]),
                              ExactAssetImage(imageList[2]),
                              ExactAssetImage(imageList[3]),
                              ExactAssetImage(imageList[4]),
                              ExactAssetImage(imageList[5]),
                            ],
                            showIndicator: true,
                            borderRadius: false,
                            moveIndicatorFromBottom: 400.0,
                            noRadiusForIndicator: true,
                            overlayShadow: false,
                            overlayShadowColors: Colors.white,
                            overlayShadowSize: 0.7,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          right: 15,
                          left: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MenuWidget(
                                iconImg: Icons.arrow_back,
                                iconColor: ColorConstant.kWhiteColor,
                                conBackColor: Colors.transparent,
                                onbtnTap: () {
                                  Navigator.of(context).pop(false);
                                }),
                            MenuWidget(
                              iconImg: Icons.add_shopping_cart,
                              iconColor: ColorConstant.kWhiteColor,
                              conBackColor: Colors.transparent,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}