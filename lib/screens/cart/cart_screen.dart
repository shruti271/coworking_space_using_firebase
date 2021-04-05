// import 'package:coworking_space/models/Cart.dart';
import 'package:coworking_space/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
// import 'package:coworking_space/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<CartBox>(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(context) {
    int cat = Provider.of<CartBox>(context).itemCount;
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "$cat",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
