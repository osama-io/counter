import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:counter/controllers/firebase_controllers.dart';
import 'package:counter/ui/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: ,
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              HomeScreen(
               // color: Colors.white,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.white,
          showElevation: true,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController!.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              activeColor: Colors.pink,
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              title: Text('Love'),
              icon: Icon(Icons.apps),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              title: Text('Moments'),
              icon: Icon(Icons.chat_bubble),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              title: Text('Notification'),
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
