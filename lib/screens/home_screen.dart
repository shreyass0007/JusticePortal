import 'package:flutter/material.dart';
import 'complaint_registration_screen.dart';
import 'case_status_screen.dart';
import 'communication_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // List of pages corresponding to each navigation item.
  final List<Widget> _pages = [
    ComplaintRegistrationScreen(),
    CaseStatusScreen(),
    CommunicationScreen(),
  ];

  // Titles for the AppBar
  final List<String> _titles = [
    'Register Complaint',
    'Case Status',
    'Communication',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Complaint',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Comm.',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
