import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view/routes.dart';

const List<StaggeredTile> _tiles = <StaggeredTile>[
  StaggeredTile.count(2, 0.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 0.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 0.5),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 0.5),
];

List<Widget> _children = <Widget>[
  HomeHeaderTile('Staggered layout', Colors.indigo),
  HomeTile('count constructor\ncount tile', staggeredCountCountRoute, Colors.indigo),
  HomeTile('extent constructor\ncount tile', staggeredExtentCountRoute, Colors.indigo),
  HomeTile('count constructor\nextent tile', staggeredCountExtentRoute, Colors.indigo),
  HomeTile('extent constructor\nextent tile', staggeredExtentExtentRoute, Colors.indigo),
  HomeHeaderTile('Spannable layout', Colors.purple),
  HomeTile('count constructor\ncount tile', spannableCountCountRoute, Colors.purple),
  HomeTile('count constructor\nextent tile', spannableCountExtentRoute, Colors.purple),
  HomeTile('extent constructor\ncount tile', spannableExtentCountRoute, Colors.purple),
  HomeTile('extent constructor\nextent tile', spannableExtentExtentRoute, Colors.purple),
  HomeHeaderTile('More', Colors.pink),
  HomeTile('example01', example01, Colors.pink),
  HomeTile('example02', example02, Colors.pink),
  HomeTile('example03', example03, Colors.pink),
  HomeTile('example04', example04, Colors.pink),
  HomeTile('example05', example05, Colors.pink),
  HomeTile('example06', example06, Colors.pink),
  HomeTile('example07', example07, Colors.pink),
  HomeTile('example08', example08, Colors.pink),
  HomeTile('exampleTests', exampleTests, Colors.green),
];

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: const Text("StaggeredGridView Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          staggeredTiles: _tiles,
          children: _children,
        ),
      ),
    );
  }
}

class HomeHeaderTile extends StatelessWidget{

   final String title;
   final Color backgroundColor;

  const HomeHeaderTile(this.title, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: backgroundColor
          )
        )
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).primaryTextTheme.headline6!.copyWith(color: backgroundColor),
          ),
        ),
      ),
    );
  }
}

class HomeTile extends StatelessWidget{
  final String title;
  final String route;
  final Color backgroundColor;

  HomeTile(this.title, this.route, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(route),
        child:  Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                color:
                  ThemeData.estimateBrightnessForColor(backgroundColor) ==
                      Brightness.dark
                    ? Colors.white
                    : Colors.black
              ),
            ),
          ),
        ),
      ),
    );
  }

}