
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view/staggered_grid_view_page.dart';

const List<StaggeredTile> _tiles = <StaggeredTile>[
  StaggeredTile.extent(2, 50),
  StaggeredTile.extent(1, 180),
  StaggeredTile.extent(1, 160),
  StaggeredTile.extent(3, 140),
  StaggeredTile.extent(1, 120),
  StaggeredTile.extent(4, 130),
  StaggeredTile.extent(1, 50),
  StaggeredTile.extent(2, 60),
  StaggeredTile.extent(1, 130),
  StaggeredTile.extent(3, 140),
  StaggeredTile.extent(1, 60),
  StaggeredTile.extent(1, 150),
];

class SpannableExtentExtentPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const StaggeredGridViewPage.extent(
        title: 'Spannable (extent , extent)',
        maxCrossAxisExtent: 75,
        tiles: _tiles,
    );
  }
}