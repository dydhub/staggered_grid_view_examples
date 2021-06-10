import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view/staggered_grid_view_page.dart';

const List<StaggeredTile> _tiles = [
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1),
];

class StaggeredCountCountPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const StaggeredGridViewPage.count(title: 'Staggered (Count , Count)', crossAxisCount: 2 , tiles: _tiles);
  }

}