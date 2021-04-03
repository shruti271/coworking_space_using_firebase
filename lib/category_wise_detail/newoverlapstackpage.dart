// import 'package:coworking_space/category_wise_detail/specification_detail.dart';
// import 'package:flutter/material.dart';

// import 'features_detail.dart';
// import 'offerdetail_page.dart';

// class CustomBottomSheet extends StatefulWidget {
//   @override
  
//   _CustomBottomSheetState createState() => _CustomBottomSheetState();
// }

// class _CustomBottomSheetState extends State<CustomBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     double sheetItemHeight = 110;
//     return DraggableScrollableSheet(
//          initialChildSize: 0.53,
//       minChildSize: 0.53,
//       // maxChildSize: 1.0,
//           builder: ( context, scrollController) {
//             return SingleChildScrollView(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//                 child: Container(
//                   child: ListView(
//                     controller: scrollController,
//                     children: [
//                       Container(
//                     padding: EdgeInsets.all(20),
//                     child: Text.rich(TextSpan(
//                           text: 'GoOffice 2400 -oftog co-workin',
//                           style: TextStyle(
//                                   color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
//                           children: <InlineSpan>[
//                             TextSpan(
//                               text: '\n Widget in flutter',
//                               style: TextStyle(
//                                   fontSize: 20),
//                             )
//                           ])),
//                     ),                
//                   offerDetails(sheetItemHeight),
//                   specifications(sheetItemHeight),
//                   features(sheetItemHeight),
//                   SizedBox(height: 220),
//                     ],
//                   ),
//                 ),
//               ),
              
//             );
//           },
//         );
//   }
// }