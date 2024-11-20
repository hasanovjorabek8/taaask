import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Courses'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.web, size: 40),
                  title: Text('Introduction to Web Development'),
                  subtitle: Text('Instructor: Davit Rouben'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Progress: 50%'),
                      SizedBox(height: 5),
                      LinearProgressIndicator(value: 0.5),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Continue Learning'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
