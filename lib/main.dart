import 'package:coworking_space/category_wise_detail/car.dart';
import 'package:coworking_space/models/Cart.dart';
import 'package:coworking_space/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:coworking_space/routes.dart';
import 'package:coworking_space/theme.dart';
import 'package:provider/provider.dart';
import 'category_wise_detail/category.dart';
// import 'package:firebase_core/firebase_core.dart' ;
// 
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:(context)=> CartBox(),
        ),
        ChangeNotifierProvider(
          create:(context)=> Pacenotifier(),
        ),
        ChangeNotifierProvider(
          create:(context)=> CategoryNotifier(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        // home: SplashScreen(),
        home: HomeScreen(),                
        // initialRoute: SplashScreen.routeName,//last ma reove this comment
        routes: routes,
        // routes: {
//           DetailPage.routeName: (ctx) => DetailPage(),
//           CartScreen.routeName: (ctx) => CartScreen(),
//         },
      ),
    );
  }
}
