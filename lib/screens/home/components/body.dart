// import 'package:coworking_space/google_map/coworking_space.dart';
// import 'package:coworking_space/models/Cart.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../../../size_config.dart';
import 'citydropdown_menu_page.dart';
import 'home_header.dart';
import 'home_page_category.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            CityDropDownBar(),                                   
            CategoryOfPlace(),                                        
          ],
        ),
      ),
    );
  }
}
