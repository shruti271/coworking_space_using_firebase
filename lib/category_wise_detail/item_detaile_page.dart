//second

// import 'dart:io';
import 'package:coworking_space/category_wise_detail/car.dart';
// import 'package:coworking_space/models/Product.dart';
// import '../models/cart.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:coworking_space/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import '../constants.dart';
// import 'floating_widget.dart';
import 'menu_widget.dart';

// ignore: must_be_immutable
class ItemDetailScreen extends StatelessWidget {
  // final List<String> imageList;
  final SpaceInfo info;
  // ignore: non_constant_identifier_names
  int imgpath_index;
  ItemDetailScreen({@required this.info});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    // CartBox currentcart = Provider.of<CartBox>(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 0, bottom: 10),
                  child: SizedBox(
                    height: 320.0,
                    width: screenWidth,
                    child: Carousel(
                      images: [
                        // for(int i=0;i<imageList.length;i++){
                        // AssetImage(imageList[i])
                        ExactAssetImage("imgs/o6.jpg"),
                        ExactAssetImage(info.img[1]),
                        ExactAssetImage(info.img[2]),
                        // }
                      ],
                      showIndicator: true,
                      borderRadius: false,
                      moveIndicatorFromBottom: 10.0,
                      noRadiusForIndicator: true,
                      overlayShadow: false,
                      overlayShadowColors: Colors.white,
                      overlayShadowSize: 0.7,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
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
                        onbtnTap: () {
                          // ignore: deprecated_member_use
                          Scaffold.of(context).showSnackBar(SnackBar(
                            duration: Duration(seconds: 3),
                            content: Text('Item Added to Cart'),
                          ));
                          // cart.addItem(1, "work", 23.5);
                          Provider.of<CartBox>(context, listen: false)
                              .addItem(info, 3);
                          // print(demoCarts.length);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
