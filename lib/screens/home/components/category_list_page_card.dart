import 'package:flutter/material.dart';
import 'package:coworking_space/category_wise_detail/cat_place.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class CategoryOfPlace extends StatelessWidget {
  const CategoryOfPlace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "category",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryCard(imgName:"imgs/o4.jpg",categoryName:"office",routeName:CategoryWiseProductPage.routeName),
               CategoryCard(imgName:"imgs/o5.jpg",categoryName:"meeting space",routeName:CategoryWiseProductPage.routeName),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.imgName,
    @required this.categoryName,
    @required this.routeName
  }) : super(key: key);
  final String imgName;
  final String categoryName;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SpecialOfferCard(
      image: imgName,
      category: categoryName,
      numOfBrands: 18,
      press: () {
        if(selectedLocation.isNotEmpty)
            Navigator.pushNamed(context,routeName,arguments:{'SpaceCategory':categoryName});
        else
           {             
          Scaffold.of(context).showSnackBar(SnackBar(  
            content: Text('city must be choosen.!!! '),  
            duration: Duration(seconds: 5),  
            action: SnackBarAction(  
              label: 'use default',  
              onPressed: () {  
                // Some code to undo the change.  
                selectedLocation="surat";
              },  
            ),  
          ),);  
           }
        
      },
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          // width: getProportionateScreenWidth(140),
          // height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
