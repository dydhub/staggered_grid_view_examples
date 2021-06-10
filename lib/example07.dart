import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Example07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dynamic tile sizes'),
      ),
      body: StaggeredGridView.count(
        primary: false,
        crossAxisCount: 4,
        staggeredTiles: const <StaggeredTile>[
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
        ],
        children: const <Widget>[
          _Tile(
              'https://th.bing.com/th/id/R359466329aa274b0edebcf37f66573b4?rik=wgck3aT6sVNxcg&riu=http%3a%2f%2fimg.love.tv%2f2017%2f7%2f1%2f22%2f693e5fe2df94402299e5377724030542.jpg',
              1),
          _Tile(
              'https://th.bing.com/th/id/R664604e404c912a882eeba598a6b2b7c?rik=5nqpeyRun9C0UA&riu=http%3a%2f%2fseopic.699pic.com%2fphoto%2f50044%2f7865.jpg',
              2),
          _Tile(
              'https://img.zcool.cn/community/01dea75d4e1aaba8012187f4bff9e0.jpg@1280w_1l_2o_100sh.jpg',
              3),
          _Tile(
              'https://cdn.pixabay.com/photo/2016/10/21/14/50/plouzane-1758197_960_720.jpg',
              4),
          _Tile(
              'https://cdn.pixabay.com/photo/2016/11/16/10/59/mountains-1828596_960_720.jpg',
              5),
          _Tile(
              'https://img.zcool.cn/community/01c4e05d401ab7a80120695c8619db.jpg@1280w_1l_2o_100sh.jpg',
              6),
          _Tile(
              'https://cdn.pixabay.com/photo/2017/08/24/22/37/gyrfalcon-2678684_960_720.jpg',
              7),
          _Tile(
              'https://cdn.pixabay.com/photo/2013/01/17/08/25/sunset-75159_960_720.jpg',
              8),
        ],
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.source, this.index);

  final String source;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(source),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              children: <Widget>[
                Text(
                  'Image number $index',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Vincent Van Gogh',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}