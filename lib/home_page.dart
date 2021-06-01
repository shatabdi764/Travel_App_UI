import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var selectedItem = 0;
  List children = [
    DashboardPage(),
    DashboardPage(),
    DashboardPage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedItem],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B1B1B),
        selectedItemColor: Colors.pink.shade600,
        iconSize: 30.0,
        currentIndex: selectedItem,
        unselectedItemColor: Color(0xFF808080),
        onTap: (currentIndex) {
          setState(() {
            selectedItem = currentIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.home),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink.shade600
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.search),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink.shade600
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.camera_alt),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink.shade600
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.person_outline),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink.shade600
              ),
            ),
          ),
        ],
      ),
    );
  }
}