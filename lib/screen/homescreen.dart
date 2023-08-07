// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:flutter_animated_icons/useanimations.dart';
import 'package:lottie/lottie.dart';

import '../widgets/bottombar.dart';
import '../widgets/filter.dart';

import '../widgets/productCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _settingController;
  late AnimationController _favoriteController;
  late AnimationController _menuController;
  AnimationController? _bellController;
  late AnimationController _bookController;

  @override
  void initState() {
    super.initState();

    _settingController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _favoriteController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _menuController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _bellController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();
    _bookController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _settingController.dispose();
    _favoriteController.dispose();
    _menuController.dispose();
    _bellController!.dispose();
    _bookController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomBar(bellController: _bellController),
          backgroundColor: const Color.fromARGB(255, 242, 241, 241),
          //backgroundColor: Colors.red,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Applications",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellow,
                      child: IconButton(
                        onPressed: () {},
                        icon: Lottie.asset(
                            LottieFiles.$33262_icons_bell_notification,
                            controller: _bellController,
                            height: 40,
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Popular"), Text("Executes"), Text("All")],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 190,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FilterCard(context),
                      FilterCard(context),
                      FilterCard(context),
                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Popular stays",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        color: Colors.red,
                        splashRadius: 50,
                        iconSize: 100,
                        onPressed: () {},
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Lottie.asset(
                              LottieFiles.$60894_line_filter_icon_animations,
                              controller: _bellController,
                              height: 40,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),

                // Text("sdsds"),
                Container(
                    color: Colors.green,
                    height: 600,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        childAspectRatio: 0.9,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: [
                          ProductCard("villa", "122", 4.0),
                          ProductCard("room", "23", 4.9),
                          ProductCard("cottage", "123", 4.9),
                          // ProductCard(),
                        ],
                      ),
                    )),
                const Text("second")
              ],
            ),
          ),
        ));
  }
}
