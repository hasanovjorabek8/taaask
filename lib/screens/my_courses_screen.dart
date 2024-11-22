import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> myCourses = [
    {
      'title': 'Introduction to Web Development',
      'instructor': 'Davit Rouben',
      'progress': 0.5,
      'icon': Icons.web,
    },
    {
      'title': 'Advanced Python Programming',
      'instructor': 'Jane Doe',
      'progress': 0.8,
      'icon': Icons.code,
    },
    {
      'title': 'Cybersecurity Basics',
      'instructor': 'John Smith',
      'progress': 0.3,
      'icon': Icons.security,
    },
  ];

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
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined,
                color: Colors.orange),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.orange),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Поле поиска
            Container(
              color: Colors.blue[900],
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search, color: Colors.blue),
                  hintText: 'Search Courses',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            // Список курсов
            ListView.builder(
              padding: const EdgeInsets.all(16.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: myCourses.length,
              itemBuilder: (context, index) {
                final course = myCourses[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          course['icon'],
                          size: 40,
                          color: Colors.blue,
                        ),
                        title: Text(
                          course['title'] ?? 'No Title',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Instructor: ${course['instructor']}',
                          style: const TextStyle(color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Progress: ${(course['progress'] * 100).toInt()}%',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            LinearProgressIndicator(
                              value: course['progress'],
                              backgroundColor: Colors.grey[200],
                              color: Colors.orange,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Действие при нажатии
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Continue Learning',
                            style: TextStyle(color: Colors.white),
                          ),
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
