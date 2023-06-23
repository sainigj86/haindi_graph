// ignore_for_file: override_on_non_overriding_member, unused_field

import 'package:flutter/material.dart';
import 'package:haindi_graph/feature/screens/bottom_navigation_bar_screens/branch_screen.dart';
import 'package:haindi_graph/feature/screens/cart_screens/cart_screen.dart';
import 'package:haindi_graph/feature/screens/bottom_navigation_bar_screens/home_screen.dart';
import 'package:haindi_graph/feature/screens/bottom_navigation_bar_screens/profile_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _currentIndex = 1;
  final List<Widget> _widget = <Widget>[
    const BranchScreen(),
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
  @override
  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.branding_watermark),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
