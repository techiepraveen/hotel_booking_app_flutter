import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:flutter_animated_icons/useanimations.dart';
import 'package:lottie/lottie.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required AnimationController? bellController,
  }) : _bellController = bellController;

  final AnimationController? _bellController;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(fixedColor: Colors.red, elevation: 0, items: [
      BottomNavigationBarItem(
          icon: Lottie.asset(LottieFiles.$90216_home_icon_micro_interaction,
              controller: _bellController, height: 40, fit: BoxFit.cover),
          label: "Nipora",
          backgroundColor: Colors.green),
      BottomNavigationBarItem(
          icon: Lottie.asset(LottieFiles.$89355_search_icon,
              controller: _bellController, height: 40, fit: BoxFit.cover),
          label: "Nipora",
          backgroundColor: Colors.green),
      BottomNavigationBarItem(
          icon: Lottie.asset(LottieFiles.$33262_icons_bell_notification,
              controller: _bellController, height: 40, fit: BoxFit.cover),
          label: "Nipora",
          backgroundColor: Colors.transparent),
      BottomNavigationBarItem(
          icon: Lottie.asset(LottieFiles.$33262_icons_bell_notification,
              controller: _bellController, height: 40, fit: BoxFit.cover),
          label: "Nipora",
          backgroundColor: Colors.transparent),
      BottomNavigationBarItem(
          icon: Lottie.asset(LottieFiles.$33262_icons_bell_notification,
              controller: _bellController, height: 40, fit: BoxFit.cover),
          label: "Nipora",
          backgroundColor: Colors.transparent),
    ]);
  }
}
