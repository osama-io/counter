import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:counter/controllers/firebase_controllers.dart';
import 'package:counter/ui/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'action_ui.dart';

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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.pink,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.pink,
              ),
            ),
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Xyz"),
                accountEmail: Text("xyz@gmail.com"),
                decoration: BoxDecoration(color: Colors.pink),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
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
              ActionsScreen(),
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
              title: Text('Interactions'),
              icon: Icon(Icons.integration_instructions_outlined),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              title: Text('Moments'),
              icon: Icon(Icons.date_range),
            ),
            BottomNavyBarItem(
              activeColor: Colors.pink,
              title: Text('Notification'),
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }
}
