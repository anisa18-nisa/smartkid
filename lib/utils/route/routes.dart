import 'package:flutter/material.dart';
import 'package:smartkid/pages/home.dart';
import 'package:smartkid/pages/landing_page.dart';
import 'package:smartkid/pages/about/about.dart';
import 'package:smartkid/pages/drawing/drawingboard.dart';
import 'package:smartkid/pages/favorite/favorite.dart';
import 'package:smartkid/pages/fruits/fruits.dart';
import 'package:smartkid/pages/main_home.dart';
import 'package:smartkid/pages/animals/animals.dart';
import 'package:smartkid/pages/atoz/atoz.dart';
import 'package:smartkid/pages/colours/colours.dart';
import 'package:smartkid/pages/flowers/flowers.dart';
import 'package:smartkid/pages/body/body_parts.dart';
import 'package:smartkid/pages/planets/planets.dart';
import 'package:smartkid/utils/route/page_transtion.dart';
import 'package:smartkid/utils/route/route_constant.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AllRoutesConstant.homeRoute:
        return slidePageRoute(const HomePage());
      case AllRoutesConstant.atozRoute:
        return slidePageRoute(const AtoZ());
      case AllRoutesConstant.partsRoute:
        return slidePageRoute(const PartsPage());
      case AllRoutesConstant.solarRoute:
        return slidePageRoute(PlanetsPage());
      case AllRoutesConstant.animalRoute:
        return slidePageRoute(AnimalsPage());
      case AllRoutesConstant.colourRoute:
        return slidePageRoute(const ColoursPage());
      case AllRoutesConstant.aboutRoute:
        return slidePageRoute(const AboutPage());
      case AllRoutesConstant.flowerRoute:
        return slidePageRoute(const FlowerPage());
      case AllRoutesConstant.favoriteRoute:
        return slidePageRoute(const FavoritePage());
      case AllRoutesConstant.fruitRoute:
        return slidePageRoute(FruitsPage());
      case AllRoutesConstant.drawingboardRoute:
        return slidePageRoute(const DrawingBoardPage());
      case AllRoutesConstant.landingRoute:
        return slidePageRoute(const LandingPage());
      case AllRoutesConstant.mainhomeRoute:
        return slidePageRoute(const MainHome());

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Route Tidak Ditemukan'),
            ),
          ),
        );
    }
  }
}
