import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Slider1> with TickerProviderStateMixin {
  late TabController _tabController;
  double _linePosition = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_updateLinePosition);
  }

  void _updateLinePosition() {
    setState(() {
      _linePosition = _tabController.index == 0 ? 0 : 1;
    });
  }

  Widget _buildTab(String label, int tabIndex) {
    return GestureDetector(
      onTap: () {
        _tabController.animateTo(tabIndex);
      },
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 40,
            color: Colors.black,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTab('LeaderBoard', 0),
                      SizedBox(width: 16),
                      _buildTab('ScoreBoard', 1),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: GestureDetector(
                    onHorizontalDragEnd: (details) {
                      if (details.primaryVelocity! > 0) {
                        _tabController.animateTo(0);
                      } else if (details.primaryVelocity! < 0) {
                        _tabController.animateTo(1);
                      }
                    },
                    child: Stack(
                      children: [
                        TabBarView(
                          controller: _tabController,
                          children: [
                            Container(
                              alignment: Alignment.center,
                            ),
                            Container(
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                        Container(
                          width: 150,
                          height: 2,
                          color: Colors.white,
                          margin: EdgeInsets.only(
                            top: 8,
                            left: 36 + _linePosition * (150 + 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
