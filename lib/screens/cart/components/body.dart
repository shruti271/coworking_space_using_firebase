import 'package:coworking_space/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:coworking_space/models/Cart.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
// import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CartBox curcart = Provider.of<CartBox>(context,listen: false);

    return Container(
        child: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: curcart.itemCount,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CartCard(
            id: curcart.demoCarts.keys.toList()[index],
            spacename:curcart.demoCarts.values.toList()[index].product.spacename ,
             price:curcart.demoCarts.values.toList()[index].product.price ,
             img: curcart.demoCarts.values.toList()[index].product.img[0], 
             address: curcart.demoCarts.values.toList()[index].product.address,
             qty: curcart.demoCarts.values.toList()[index].numOfItem
             ),
        ),
      ),
    ));
  }
}

class CartCard extends StatelessWidget {

final String id;
final String spacename;
final double price;
final String img;
final String address;
final int qty;

CartCard({@required this.id,@required this.spacename,@required this.price,@required this.img,@required this.address,@required this.qty});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dismissible(
            // key: Key(curcart.demoCarts[index].product.id.toString()),            
            key: Key(id),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
        Provider.of<CartBox>(context, listen: false).removeItem(id);

              // setState(() {
              //   curcart.removeItem(index.toString());
              // });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                  Text('2'),
                ],
              ),
            ),
            // child:CartCard(cart: cart.demoCarts[index]),
            child: Row(
              children: [
                SizedBox(
                  width: 88,
                  child: AspectRatio(
                    aspectRatio: 0.88,
                    child: Container(
                      // padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image(image: AssetImage(img)),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$spacename",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                    SizedBox(height: 10),
                                        Text(
                      "$address",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      maxLines: 2,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "$price",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: kPrimaryColor),
                        children: [
                          TextSpan(
                              text: " x$qty",
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
    );
  }
}