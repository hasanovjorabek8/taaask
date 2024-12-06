import 'package:flutter/material.dart';
import 'package:taaask/courses/python_course.dart';
import 'package:taaask/courses/webdeveloper_course.dart';
import 'package:taaask/courses/cybersecurity_course.dart';
import 'package:taaask/courses/courses_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduLearn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Python Developer',
      'description': 'Master Python programming for various applications.',
      'imageAsset': 'assets/images/python_developer.jpg',
      'progress': 0.3,
      'status': 'Progress',
      'route': PythonCourse(),
    },
    {
      'title': 'Arduino',
      'description': 'Learn to create and control electronic projects.',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 1.0,
      'status': 'Finished',
      'route': CoursesScreen(),
    },
    {
      'title': 'Web Developer',
      'description': 'Develop modern websites and web applications.',
      'imageAsset': 'assets/images/web-developer.jpg',
      'progress': 0.0,
      'status': 'New',
      'route': WebDeveloperCourse(),
    },
    {
      'title': 'Cybersecurity',
      'description': 'Learn to secure systems and protect against threats.',
      'imageAsset': 'assets/images/Cyber_security.webp',
      'progress': 0.2,
      'status': 'Trends',
      'route': CyberSecurityCourse(),
    },
  ];

  final List<Map<String, dynamic>> myCourses = [
    {
      'title': 'Network Administration',
      'description': 'Configuring and Securing Networks',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.5,
      'status': 'Complete',
      'route': CoursesScreen(), // Замените на нужный маршрут
    },
    {
      'title': 'Mobile App Development',
      'description': 'Building iOS Apps and Android Apps',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.5,
      'status': 'Complete',
      'route': CoursesScreen(), // Замените на нужный маршрут
    },

    {
      'title': 'Network Administration',
      'description': 'Configuring and Securing Networks',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.5,
      'status': 'Complete',
      'route': CoursesScreen(), // Замените на нужный маршрут
    },
    {
      'title': 'Mobile App Development',
      'description': 'Building iOS Apps and Android Apps',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.5,
      'status': 'Complete',
      'route': CoursesScreen(), // Замените на нужный маршрут
    },
  ];

  String selectedFilter = 'All';
  bool showFilterOptions = false;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredCourses = selectedFilter == 'All'
        ? courses
        : courses.where((course) => course['status'] == selectedFilter).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/image.png',
              height: 48,
              width: 48,
            ),
            const SizedBox(width: 8),
            const Text(
              'EduLearn',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined, color: Colors.orange),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.account_circle_sharp, color: Colors.orange),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search section
            Container(
              color: Colors.blue[900],
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search Courses',
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.filter_list, color: Colors.orangeAccent),
                        onPressed: () {
                          setState(() {
                            showFilterOptions = !showFilterOptions;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  if (showFilterOptions)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: ['All', 'Progress', 'Finished', 'Trends'].map((option) {
                          return FilterChip(
                            label: Text(option),
                            selected: selectedFilter == option,
                            onSelected: (bool selected) {
                              setState(() {
                                selectedFilter = selected ? option : 'All';
                              });
                            },
                            selectedColor: Colors.orangeAccent,
                            backgroundColor: Colors.grey[300],
                          );
                        }).toList(),
                      ),
                    ),
                ],
              ),
            ),
            // "Courses" Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                          child: Image.asset(
                            course['imageAsset'] ?? 'assets/images/default_image.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          course['title'] ?? 'No Title',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          course['description'] ?? 'No Description',
                          style: const TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => course['route']),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text('Enroll Now', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            // "My Courses" Section
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'My Courses',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: myCourses.length,
              itemBuilder: (context, index) {
                final course = myCourses[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: ListTile(
                    leading: Image.asset(
                      course['imageAsset'] ?? 'assets/images/default_image.jpg',
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                    ),
                    title: Text(course['title'] ?? 'No Title'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(course['description'] ?? 'No Description'),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: course['progress'],
                          backgroundColor: Colors.grey[300],
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => course['route']),
                        );
                      },
                      child: const Text('Continue'),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
