import 'package:flutter/material.dart';
import '../widgets/flick_video_player_widget.dart';

class CoursesScreen extends StatelessWidget {
  final String title;
  final String description;
  final String introVideoUrl;
  final List<Map<String, String>> modules;

  const CoursesScreen({
    required this.title,
    required this.description,
    required this.introVideoUrl,
    required this.modules,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Title
              Text(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              // Course Description
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),

              // Video Section
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FlickVideoPlayerWidget(videoUrl: introVideoUrl),
                    ),
                  );
                },
                icon: const Icon(Icons.play_circle_fill),
                label: const Text('Play Introduction Video'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),

              const SizedBox(height: 20),

              // Course Modules
              const Text(
                "Course Modules",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),

              // Modules List
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: modules.length,
                itemBuilder: (context, index) {
                  final module = modules[index];
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blueAccent,
                      child: Text(
                        module['title']![0], // Первая буква названия модуля
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    title: Text(module['title']!),
                    subtitle: Text("Duration: ${module['duration']}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.play_circle_fill, color: Colors.blue),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FlickVideoPlayerWidget(
                              videoUrl: module['videoUrl']!,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
