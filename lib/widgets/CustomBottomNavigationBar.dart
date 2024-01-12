import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 4),
      child: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text(
              "Home",
              style: TextStyle(fontFamily: "Manrope"),
            ),
            //FF5A33
            selectedColor: Colors.deepOrange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.pets_outlined),
            title: const Text("Pets"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.health_and_safety),
            title: const Text("Health"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.menu),
            title: const Text(
              "Menu",
              style: TextStyle(fontFamily: "Manrope"),
            ),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
