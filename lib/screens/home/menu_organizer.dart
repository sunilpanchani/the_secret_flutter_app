import 'package:flutter/material.dart';
import '../detail_pages/attract_money/attract_money.dart';

class MenuOrganizer extends StatelessWidget {
  static const ImageName = [
    'attract_money.jpg',
    'relaxation.jpg',
    'spirtual_healing.jpg',
    'visulization.jpg',
  ];
  static const Title = [
    'Attract Money',
    'Relaxation',
    'Spirtual healing',
    'Visulization'
  ];

  final BuildContext _context;
  MenuOrganizer(this._context);
  @override
  Widget build(BuildContext context) {
    return _buildImageColumn();
  }

  Widget _buildImageColumn() => Container(
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
        child: Column(
          children: [
            _buildImageRow(1),
            _buildImageRow(3),
          ],
        ),
      );
  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          // Text('Test tech'),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );

  Widget _buildDecoratedImage(int imageIndex) => Flexible(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _openDetailPage(imageIndex);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black38),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8)),
                ),
                margin: const EdgeInsets.all(1),
                child: Image.asset(
                  'assets/home_screen/home$imageIndex.jpg',
                  fit: BoxFit.cover,
                ),
                //padding: EdgeInsets.fromLTRB(0, 155.0, 0,0),
              ),
            ),
            GestureDetector(
              onTap: () {
                _openDetailPage(imageIndex);
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 155.0, 0, 0),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration:
                      BoxDecoration(color: Colors.blueAccent.withOpacity(0.5)),
                  height: 40.0,
                  width: 250.0,
                  child: Text(Title[imageIndex - 1],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(_context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      );

  void _openDetailPage(int imageIndex) {
    switch(imageIndex){
      case 1: Navigator.push(_context,MaterialPageRoute(builder: (context) => AttractMoney(context)));
              break;
      case 2: Navigator.push(_context,MaterialPageRoute(builder: (context) => AttractMoney(context)));
              break;
      }
  }
}
