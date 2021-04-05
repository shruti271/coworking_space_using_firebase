// import 'dart:async';
import 'package:coworking_space/category_wise_detail/car.dart';
import 'package:flutter/material.dart';
import 'package:coworking_space/constants.dart';
import 'placedetailpage.dart';

// ignore: must_be_immutable
class ImageWidget extends StatelessWidget {
  
  SpaceInfo info;
  

  ImageWidget(
    this.info,    
  );

  @override
  Widget build(BuildContext context) {
    // final oCcy = new NumberFormat("##,##,###", "en_INR");
    var screenWidth = MediaQuery.of(context).size.width;
    Color favcolor = ColorConstant.kWhiteColor;
    return Card(
      elevation: 20,
      // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LayoutStarts(
                    // ItemDetailScreen(//PersonalPlaceDetail(),
                    info:this.info,
                    // this.house,
                    // this.imgpath_index,
                    // this.imageList,
                  ),
                ),
              );
            },
            child: Container(
              height: 160,
              width: screenWidth,
              padding: EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "imgs/o6.jpg"                  
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: favcolor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      // child: Favstorecard(imgIndex: imgpath_index),
                      child: Favstorecard(imgIndex: 0),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
              bottom: 10,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "\$" + info.price.toString(),
                  // "\$ 200" ,
                  
                  // style: GoogleFonts.notoSans(
                  //   fontSize: 22,
                  //   fontWeight: FontWeight.w600,
                  // ),
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    // house.address,
                    "b-164"
                    // style: GoogleFonts.notoSans(
                    //   fontSize: 15,
                    //   color: ColorConstant.kGreyColor,
                    // ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 0,
              bottom: 10,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.orangeAccent[700],
                  ),
                  Text(
                    "short disc and type",
                    // house.bedrooms.toString() +
                    //     " bedrooms / " +
                    //     house.bathrooms.toString() +
                    //     " bathrooms / " +
                    //     house.squarefoot.toString() +
                    //     " ft\u00B2",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text("in 0.91 km"),
                ]),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Favstorecard extends StatefulWidget {
  final int imgIndex;
  // int index;

  Favstorecard({
    Key key,
    this.imgIndex,
    // @required this.index,
  }) : super(key: key);
  @override
  _FavstorecardState createState() => _FavstorecardState();
}

class _FavstorecardState extends State<Favstorecard> {
  @override
  Widget build(BuildContext context) {
    Color _favcolor = Colors.black;
    return IconButton(
        icon: Icon(
          Icons.favorite_border,
          color: _favcolor,
        ),
        onPressed: () {
          print("heart clicked");

          if (!fav.contains(widget.imgIndex)) {
            fav.add(widget.imgIndex);
            setState(() {
              _favcolor = Colors.red;
              });            
          } else {
            fav.remove(widget.imgIndex);
              setState(() {_favcolor = Colors.black;});

          }
          print(fav);
        });
  }
}
