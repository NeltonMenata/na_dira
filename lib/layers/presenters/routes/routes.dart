// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:na_dira/layers/presenters/pages/home/home_page.dart';
import 'package:na_dira/layers/presenters/pages/splash/splash_page.dart';

abstract class Routes {
  
  static const HOME = "/home";
  static const SPLASH = "/splash";
  static Map<String, Widget Function(BuildContext context)> routes(BuildContext context) {
    return {
      HOME: (context) => const HomePage(),
      SPLASH: (context) => const SplashPage(),
    };
  }
}
