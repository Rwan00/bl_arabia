import 'package:bl_arabia/features/home/presentation/screens/challanges_screen.dart';
import 'package:bl_arabia/features/home/presentation/screens/games_screen.dart';
import 'package:bl_arabia/features/home/presentation/screens/home_screen.dart';
import 'package:bl_arabia/features/home/presentation/screens/lesining_screen.dart';
import 'package:bl_arabia/features/home/presentation/screens/levels_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

const List kPages = [
  HomeScreen(),
  LevelsScreen(),
  LesiningScreen(),
  GamesScreen(),
  ChallangesScreen(),
];

List<BottomNavigationBarItem> kBottomNavBar = [
  BottomNavigationBarItem(
    backgroundColor: kBottomColor,
    icon: const Icon(Icons.home),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: kBottomColor,
    icon: const Icon(Icons.update),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: kBottomColor,
    icon: const Icon(Icons.games),
    label: "",
  ),
  BottomNavigationBarItem(
    backgroundColor: kBottomColor,
    icon: const Icon(Icons.upgrade),
    label: "",
  ),
];
