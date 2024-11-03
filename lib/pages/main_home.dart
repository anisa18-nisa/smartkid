import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartkid/core/cubit/index_cubit.dart';
import 'package:smartkid/pages/about/about.dart';
import 'package:smartkid/pages/home.dart';
import 'package:smartkid/pages/favorite/favorite.dart';
import 'package:smartkid/pages/navbar.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  late PageController _pageController;
  DateTime? currentBackPressTime;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  bool _onBackPressed(bool canPop) {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: "Press back again to exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      canPop = false;
    } else {
      canPop = true;
    }
    return canPop;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: _onBackPressed,
      child: BlocProvider(
        create: (context) => IndexCubit(),
        child: BlocBuilder<IndexCubit, int>(
          builder: (context, index) {
            return Scaffold(
              body: PageView(
                controller: _pageController,
                children: const [
                  HomePage(),
                  FavoritePage(),
                  AboutPage(),
                ],
                onPageChanged: (index) {
                  context.read<IndexCubit>().changeIndex(index);
                },
              ),
              bottomNavigationBar:
                  BottomNavBar(pageController: _pageController),
            );
          },
        ),
      ),
    );
  }
}
