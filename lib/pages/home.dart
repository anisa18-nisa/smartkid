import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartkid/pages/favorite/favorite_page_provider.dart';
import 'package:smartkid/pages/fruits/fruits.dart';
import 'package:smartkid/pages/animals/animals.dart';
import 'package:smartkid/pages/atoz/atoz.dart';
import 'package:smartkid/pages/colours/colours.dart';
import 'package:smartkid/pages/flowers/flowers.dart';
import 'package:smartkid/pages/body/body_parts.dart';
import 'package:smartkid/pages/planets/planets.dart';
import 'package:smartkid/utils/const_dimensions.dart';
import 'package:smartkid/utils/constants.dart';
import 'package:smartkid/utils/route/route_constant.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

// Home Page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPrefs();
  }

  Future<void> _loadPrefs() async {
    await Provider.of<FavouriteScreenProvider>(context, listen: false)
        .loadFromPrefs();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<FavouriteScreenProvider>(context, listen: false);
    List<int> selectItem = provider.selectedItemList;
    return _isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            appBar: AppBar(
              title: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            body: SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AllRoutesConstant.drawingboardRoute);
                          },
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              height: ConstantDimensions.heightExtraLarge * 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Stack(
                                  fit: StackFit.expand,
                                  alignment: Alignment.center,
                                  children: [
                                    ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                          sigmaX: 5, sigmaY: 5),
                                      child: SvgPicture.asset(
                                        'assets/explore/drawing_board.svg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Drawing Board",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  const Shadow(
                                                    color: Colors.black,
                                                    offset: Offset(2, 1),
                                                    blurRadius: 4,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "Drawing Board for Artist Kids!",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  const Shadow(
                                                    color: Colors.black,
                                                    offset: Offset(2, 1),
                                                    blurRadius: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child:
                                              Consumer<FavouriteScreenProvider>(
                                            builder: (context, item, child) {
                                              return IconButton(
                                                onPressed: () {
                                                  item.setDrawingBoard();
                                                },
                                                icon: item.drawingBoard
                                                    ? const Icon(
                                                        Icons.favorite,
                                                        size: 25,
                                                        color: Colors.red,
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_border,
                                                        size: 25,
                                                      ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return GestureDetector(
                          onTap: () {
                            try {
                              switch (index) {
                                case 0:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) => const AtoZ())));
                                  break;
                                case 1:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) =>
                                              AnimalsPage())));
                                  break;

                                case 2:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) =>
                                              const PartsPage())));
                                  break;
                                case 3:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) =>
                                              const ColoursPage())));
                                  break;
                                case 4:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) =>
                                              const FlowerPage())));
                                  break;
                                case 5:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) => FruitsPage())));
                                  break;
                                case 6:
                                  Navigator.push(
                                      context,
                                      (MaterialPageRoute(
                                          builder: (context) =>
                                              PlanetsPage())));
                                  break;
                                default:
                                  break;
                              }
                            } catch (e) {
                              // ignore: avoid_print
                              print(e);
                            }
                          },
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              height: ConstantDimensions.heightExtraLarge * 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Stack(
                                  fit: StackFit.expand,
                                  alignment: Alignment.center,
                                  children: [
                                    ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                          sigmaX: 5, sigmaY: 5),
                                      child: Image.asset(
                                        AppConstants
                                            .modules[index].thumbnailPath,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Align(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              AppConstants.modules[index].name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  const Shadow(
                                                    color: Colors.black,
                                                    offset: Offset(2, 1),
                                                    blurRadius: 4,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              AppConstants
                                                  .modules[index].description,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  const Shadow(
                                                    color: Colors.black,
                                                    offset: Offset(2, 1),
                                                    blurRadius: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child:
                                              Consumer<FavouriteScreenProvider>(
                                            builder: (context, item, child) {
                                              return IconButton(
                                                onPressed: () {
                                                  if (item.selectedItemList
                                                      .contains(index)) {
                                                    item.removeList(index);
                                                  } else {
                                                    // ignore: avoid_print
                                                    print(selectItem);
                                                    item.setList(index);
                                                  }
                                                },
                                                icon: selectItem.contains(index)
                                                    ? const Icon(
                                                        Icons.favorite,
                                                        size: 25,
                                                        color: Colors.red,
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_border,
                                                        size: 25,
                                                      ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                      childCount: AppConstants.modules.length,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
