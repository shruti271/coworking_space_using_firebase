import 'package:coworking_space/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:coworking_space/screens/home/components/search_field.dart';
import '../constants.dart';
import 'filter_widget.dart';
import 'floating_widget.dart';
import 'image_widget.dart';
import 'menu_widget.dart';
// import 'placedetailpage.dart';

class CategoryWiseProductPage extends StatelessWidget {

     static String routeName = "/categoryproduct";
     
  final filterArray = [
    "<\$220.000",
    "For sale",
    "3-4 beds",
  ];
  @override
  Widget build(BuildContext context) {
    final Map arguments=ModalRoute.of(context).settings.arguments as Map;
    // ignore: unused_local_variable
    var screenWidth = MediaQuery.of(context).size.width;
    // var selected = [];

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstant.kWhiteColor,
      ),      
    );//lear and add at end 
    
    return Scaffold(
      backgroundColor: ColorConstant.kWhiteColor,

      // map view button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingWidget(        
        leadingIcon: Icons.explore,
        txt: "Map view",
      ),

      body: SingleChildScrollView(//it will remove error of yellow color when all widget can't come in 1 page ,- provide scroll it has properties also
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MenuWidget(
                    iconImg: Icons.subject,
                    iconColor: ColorConstant.kBlackColor,
                  ),                  
                  Text(arguments['SpaceCategory'],style: TextStyle(fontSize: 30,color: Colors.black),),
                  MenuWidget(
                    iconImg: Icons.add_shopping_cart,
                    iconColor: ColorConstant.kBlackColor,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              // Text(arguments['SpaceCategory'],style: TextStyle(fontSize: 30,color: Colors.black),),
              SearchField(),
              SizedBox(height: 10,),
              Text(
                selectedLocation,
                style: TextStyle(fontSize: 25),
                // style: GoogleFonts.Muli(  
                //   fontSize: 12,
                //   color: ColorConstant.kGreyColor,
                // ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "no of place",
                  // style: GoogleFonts.notoSans(
                  //   fontSize: 36,
                  //   color: ColorConstant.kBlackColor,
                  //   fontWeight: FontWeight.w500,
                  // ),
                ),
              Divider(
                color: ColorConstant.kGreyColor,
                thickness: .2,
              ),
              Container(
                height: 50,
                child:
                ListView.separated(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,                     
                  itemCount: filterArray.length,
                  itemBuilder: (context, index) {
                    return FilterChipScreen(
                      filterTxt: filterArray[index],
                    );
                  },
                  separatorBuilder: (context, index){
                     return SizedBox(
                      width: 10,
                      );},
                ),
              ),                
              SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                  Constants.houseList.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ImageWidget(
                        Constants.houseList[index],
                        index,
                        Constants.imageList,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// -------

