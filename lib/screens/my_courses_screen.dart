import 'package:flutter/material.dart';
import 'package:taaask/courses/courses_screen.dart';
import 'package:taaask/courses/python_course.dart';
import 'package:taaask/courses/webdeveloper_course.dart';

class MyCoursesScreen extends StatefulWidget {
  @override
  _MyCoursesScreenState createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  final List<Map<String, dynamic>> myCourses = [
    {
      'title': 'Network Administration',
      'description': 'Configuring and Securing Networks',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.5,
      'status': 'Complete',
      'teacher': 'David Rouben',
    },
    {
      'title': 'Mobile App Development',
      'description': 'Building iOS and Android Apps',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.75,
      'status': 'In Progress',
      'teacher': 'Sarah Johnson',
    },
  ];

  bool showFilterOptions = false;
  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
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
            // List of courses
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: myCourses.length,
              itemBuilder: (context, index) {
                final course = myCourses[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        course['imageAsset'] ?? 'assets/images/default_image.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course['title'] ?? 'No Title',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Teacher: ${course['teacher']}',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    Icon(Icons.star, color: Colors.orange, size: 16),
                                    Icon(Icons.star_half, color: Colors.orange, size: 16),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              course['description'] ?? 'No Description',
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 16),
                            Stack(
                              children: [
                                LinearProgressIndicator(
                                  value: course['progress'],
                                  backgroundColor: Colors.grey[300],
                                  color: Colors.orange,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      '${(course['progress'] * 100).toInt()}%',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // Navigation to course details
                            ElevatedButton(
                              onPressed: () {
                                if (course['title'] == 'Network Administration') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PythonCourse()),
                                  );
                                } else if (course['title'] == 'Mobile App Development') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => WebDeveloperCourse()),
                                  );
                                }
                              },
                              child: Text('Go to Course'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                foregroundColor: Colors.white,
                                minimumSize: Size(double.infinity, 50),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
