import 'package:coworking_space/category_wise_detail/spacefacility.dart';
import 'package:coworking_space/google_map/map_body.dart';
import 'package:flutter/material.dart';
import 'buy_button_main.dart';
import 'car.dart';

// ignore: must_be_immutable
class SheetContainer extends StatelessWidget {
   final SpaceInfo info;  
   SheetContainer({@required this.info});

  // final int id;   List<String> img=[];  final String spacename;  final double price;  final Features spaces;  List<Map<Icon, String>> amenities;  List<Map<Icon, String>> spaceinfo;  final double placeofcity;  final String overview;  final String address; final int rating;
  // SheetContainer({@required this.id, @required this.spacename,@required this.price,@required this.amenities,@required this.spaceinfo,@required this.placeofcity,@required this.overview,@required this.address,@required this.rating});
  
  @override
  Widget build(BuildContext context) {
    
    // double sheetItemHeight = 110;
    // List<Map<Icon, String>> infoamenities = spaces.amenities ;
    // List<Map<Icon, String>> infospaceinfo = spaces.spaceinfo ;

    return DraggableScrollableSheet(
        initialChildSize: 0.55,
        minChildSize: 0.55,
        maxChildSize: 1.0,
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              padding: EdgeInsets.only(top: 25, left: 20, right: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Color(0xfff1f1f1)),
              child: Column(
                children: <Widget>[                  
                  Expanded(
                    flex: 1,
                    child: ListView(
                      controller: scrollController,
                      children: <Widget>[
                        Container(
                          // padding: EdgeInsets.all(20),
                          child: Text.rich(TextSpan(
                              text: 'GoOffice 2400 -oftog co-workin',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: '\n Widget in flutter',
                                  style: TextStyle(fontSize: 20),
                                )
                              ])),
                        ),
                        SizedBox(height: 10,),
                        Spacefacility(amenities: info.amenities, spaceinfo: info.spaceinfo),
                        // offerDetails(sheetItemHeight, info.amenities),                        
                        // features(sheetItemHeight, info.spaceinfo),
                        SizedBox(height: 20),
                        GoogleLocation(),
                        SizedBox(height: 220),
                        RentButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
