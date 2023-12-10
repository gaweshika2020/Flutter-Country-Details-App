import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart' show GButton, GNav;
import 'package:task_02/HomePage/Finland.dart';
import 'package:task_02/HomePage/Italy.dart';
import 'package:task_02/HomePage/Singapore.dart';
import 'package:task_02/HomePage/SriLanka.dart';
import 'package:flutter_circle_flags_svg/flutter_circle_flags_svg.dart';

import '../Widgets/SampleDrawer.dart';


class NavigationBarSample extends StatefulWidget {
  const NavigationBarSample({super.key});

  @override
  State<NavigationBarSample> createState() => _NaviationBarSampleState();
}

class _NaviationBarSampleState extends State<NavigationBarSample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    SriLanka(),
    Singapore(),
    Italy(),
    Finland(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.menu,color: Colors.amber),
        title: const Text('Countries',
            style: TextStyle(
              fontWeight: FontWeight.bold,)),
      ),
      drawer: const Drawer(
        child: SampleDrawer(),
      ),
      backgroundColor: Colors.white,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  leading: CircleFlagSvg(code: 'lk'),
                  icon: Icons.home,
                  text: 'Sri Lanka',
                ),
                GButton(
                  leading: CircleFlagSvg(code: 'sg'),
                  icon: Icons.thumbs_up_down,
                  text: 'Singapore',
                ),
                GButton(
                  leading: CircleFlagSvg(code: 'it'),
                  icon: Icons.search,
                  text: 'Italy',
                ),
                GButton(
                  leading: CircleFlagSvg(code: 'fi'),
                  icon: Icons.person,
                  text: 'Finland',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}


