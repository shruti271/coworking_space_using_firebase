// import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:coworking_space/screens/cart/cart_screen.dart';
import 'package:coworking_space/screens/complete_profile/complete_profile_screen.dart';
import 'package:coworking_space/screens/details/details_screen.dart';
import 'package:coworking_space/screens/forgot_password/forgot_password_screen.dart';
import 'package:coworking_space/screens/home/home_screen.dart';
import 'package:coworking_space/screens/login_success/login_success_screen.dart';
import 'package:coworking_space/screens/otp/otp_screen.dart';
import 'package:coworking_space/screens/profile/profile_screen.dart';
import 'package:coworking_space/screens/sign_in/sign_in_screen.dart';
import 'package:coworking_space/screens/splash/splash_screen.dart';
import 'category_wise_detail/cat_place.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  CategoryWiseProductPage.routeName:(context)=>CategoryWiseProductPage(),
};
