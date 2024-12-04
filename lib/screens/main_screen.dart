import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'my_courses_screen.dart';
import '../courses/courses_screen.dart';

void main() => runApp(EduLearnApp());

class EduLearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavScreen(),
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Flutter Basics',
      'description': 'This course will teach you about Flutter basics.',
      'introVideoUrl': 'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
      'modules': [
        {
          'title': 'Module 1: Introduction to Flutter',
          'duration': '15 minutes',
          'videoUrl': 'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
        },
        {
          'title': 'Module 2: Widgets in Flutter',
          'duration': '20 minutes',
          'videoUrl': 'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
        },
      ],
    },
  ];

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreen(),
      CoursesScreen(),
      MyCoursesScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'My Courses',
          ),
        ],
      ),
    );
  }
}
