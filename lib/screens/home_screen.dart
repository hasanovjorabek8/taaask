import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Python Developer',
      'description': 'Master Python programming for various applications.',
      'imageAsset': 'assets/images/python_developer.jpg',
      'progress': 0.3,
    },
    {
      'title': 'Arduino',
      'description': 'Learn to create and control electronic projects.',
      'imageAsset': 'assets/images/Arduino.webp',
      'progress': 0.6,
    },
    {
      'title': 'Web Developer',
      'description': 'Develop modern websites and web applications.',
      'imageAsset': 'assets/images/web-developer.jpg',
      'progress': 0.4,
    },
    {
      'title': 'Cybersecurity',
      'description': 'Learn to secure systems and protect against threats.',
      'imageAsset': 'assets/images/Cyber_security.webp',
      'progress': 0.2,
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
              'assets/images.png',
              height: 48,
              width: 48,
            ),
            const SizedBox(width: 8),
            const Text(
              'EduLearn',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.orange,),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.orange,),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child:Center(
              child:  Text(
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
                            course['imageAsset'] ?? 'assets/images/Cyber_security.webp',
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
                          onPressed: () {},
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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child:Center(
              child: Text(
                'My Courses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
               ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        course['imageAsset'] ?? 'assets/images/python_developer.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(course['title'] ?? 'No Title'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(course['description'] ?? 'No Description'),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: course['progress'] ?? 0.0,
                          backgroundColor: Colors.grey[200],
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text('Continue',style: TextStyle(color: Colors.white),),
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
