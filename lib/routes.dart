import 'package:flutter/material.dart';
import 'package:staggered_grid_view/example05.dart';
import 'package:staggered_grid_view/example07.dart';
import 'package:staggered_grid_view/example_tests.dart';
import 'package:staggered_grid_view/spannable_count_count_page.dart';
import 'package:staggered_grid_view/spannable_count_extent_page.dart';
import 'package:staggered_grid_view/spannable_extent_count_page.dart';
import 'package:staggered_grid_view/spannable_extent_extent_page.dart';

import 'example01.dart';
import 'example02.dart';
import 'example03.dart';
import 'example04.dart';
import 'example06.dart';
import 'example08.dart';
import 'staggered_count_count_page.dart';
import 'staggered_count_extent_page.dart';
import 'staggered_extent_count_page.dart';
import 'staggered_extent_extent_page.dart';
import 'home.dart';

const String homeRoute = '/';
const String staggeredCountCountRoute = "/staggered_count_count";
const String staggeredExtentCountRoute = "/staggered_extent_count";
const String staggeredCountExtentRoute = "/staggered_count_extent";
const String staggeredExtentExtentRoute = "/staggered_extent_extent";
const String spannableCountCountRoute = "/spannable_count_count";
const String spannableCountExtentRoute = "/spannable_count_extent";
const String spannableExtentCountRoute = "/spannable_extent_count";
const String spannableExtentExtentRoute = "/spannable_extent_extent";

const String example01 = "/example_01";
const String example02 = "/example_02";
const String example03 = "/example_03";
const String example04 = "/example_04";
const String example05 = "/example_05";
const String example06 = "/example_06";
const String example07 = "/example_07";
const String example08 = "/example_08";
const String exampleTests = "/example_tests";
Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  homeRoute:(BuildContext context) => Home(),
  staggeredCountCountRoute:(BuildContext context) => StaggeredCountCountPage(),
  staggeredExtentCountRoute:(BuildContext context) => StaggeredExtentCountPage(),
  staggeredCountExtentRoute:(BuildContext context) => StaggeredCountExtentPage(),
  staggeredExtentExtentRoute:(BuildContext context) => StaggeredExtentExtentPage(),
  spannableCountCountRoute:(BuildContext context) => SpannableCountCountPage(),
  spannableCountExtentRoute:(BuildContext context) => SpannableCountExtentPage(),
  spannableExtentCountRoute:(BuildContext context) => SpannableExtentCountPage(),
  spannableExtentExtentRoute:(BuildContext context) => SpannableExtentExtentPage(),
  example01:(BuildContext context) => Example01(),
  example02:(BuildContext context) => Example02(),
  example03:(BuildContext context) => Example03(),
  example04:(BuildContext context) => Example04(),
  example05:(BuildContext context) => Example05(),
  example06:(BuildContext context) => Example06(),
  example07:(BuildContext context) => Example07(),
  example08:(BuildContext context) => Example08(),
  exampleTests:(BuildContext context) => ExampleTests(),
};
