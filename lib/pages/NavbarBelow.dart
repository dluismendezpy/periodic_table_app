import './About.dart';
import './ElementsGrid.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NavbarBelow extends StatefulWidget {
  const NavbarBelow({Key? key}) : super(key: key);

  @override
  _NavbarBelowState createState() => _NavbarBelowState();
}

class _NavbarBelowState extends State<NavbarBelow> {
  late Widget _child;

  @override
  void initState() {
    _child = const ElementGrid();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      backgroundColor: const Color.fromRGBO(16, 16, 16, 1),
      bottomNavigationBar: FluidNavBar(
        animationFactor: 0.5,
        style: const FluidNavBarStyle(
          barBackgroundColor: Colors.blue,
          iconBackgroundColor: Colors.white54,
          iconSelectedForegroundColor: Colors.white,
          iconUnselectedForegroundColor: Color.fromRGBO(16, 16, 16, 1),
        ),
        icons: [
          FluidNavBarIcon(icon: Icons.stream),
          FluidNavBarIcon(icon: Icons.code_rounded),
        ],
        onChange: _handleNavigationChange,
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = const ElementGrid();
          break;
        case 1:
          _child = const About();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOutCirc,
        switchOutCurve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
