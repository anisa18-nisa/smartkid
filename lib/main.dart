import 'package:flutter/material.dart';
import 'package:smartkid/pages/favorite/favorite_page_provider.dart';
import 'package:smartkid/pages/landing_page.dart';
import 'package:smartkid/pages/main_home.dart';
import 'package:smartkid/utils/route/routes.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

DateTime? currentBackPressTime;
bool visitedGettingStartedPageOnceBool = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  visitedGettingStartedPageOnceBool =
      prefs.getBool('visitedGettingStartedPageOnce') ?? false;

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => FavouriteScreenProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartKid',
      theme: ThemeData(
        // Anda dapat menentukan tema default di sini
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: visitedGettingStartedPageOnceBool
          ? const MainHome()
          : const LandingPage(),
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
