// // delete
// import 'package:flutter/material.dart';
// import 'package:coworking_space/space_cart/models/orders.dart';
// import 'package:coworking_space/space_cart/models/products.dart';
// import 'package:coworking_space/space_cart/screens/pdt_detail_screen.dart';
// import 'screens/homepage.dart';
// import 'package:provider/provider.dart';
// import 'models/cart.dart';
// import 'screens/cart_screen.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value(
//           value: Products(),
//         ),
//         ChangeNotifierProvider.value(
//           value: Product(),
//         ),
//         ChangeNotifierProvider.value(
//           value: Cart(),
//         ),
//         ChangeNotifierProvider.value(
//           value: Orders(),
//         )
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter E-commerce App',
//         theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.white),
//         home: HomePage(),
//         routes: {
//           DetailPage.routeName: (ctx) => DetailPage(),
//           CartScreen.routeName: (ctx) => CartScreen(),
//         },
//       ),
//     );
//   }
// }
