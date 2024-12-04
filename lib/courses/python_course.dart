import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PythonCourse extends StatefulWidget {
  const PythonCourse({super.key});

  @override
  State<PythonCourse> createState() => _PythonCourseState();
}

class _PythonCourseState extends State<PythonCourse> {
  final List<Map<String, String>> videos = [
    {"title": "Lesson #1 Introduction to \n Arduino and Setup", "videoId": "nrczO8tWJNg"},
    {"title": "Lesson #2 Basic Electronics and \n Circuit Building", "videoId": "CRRlbzzt3VA"},
    {"title": "Lesson #3 Programming Arduino \n (Basic Concepts)", "videoId": "gmgw6nLgzbY"},
    {"title": "Lesson #4 Intermediate Projects \n and Sensors ", "videoId": "hnKImcN3jYE"},
    {"title": "Lesson #5 Advanced Topics \n and Integration", "videoId": "Ik7SwQ477mA"},
  ];

  void navigateToVideoPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return Kitob(videoId: videos[index]["videoId"]!);  // Передаем videoId
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return Kitob2(videoId: videos[index]["videoId"]!);  // Передаем videoId
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return Kitob3(videoId: videos[index]["videoId"]!);  // Передаем videoId
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return Kitob4(videoId: videos[index]["videoId"]!);  // Передаем videoId
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return Kitob5(videoId: videos[index]["videoId"]!);  // Передаем videoId
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        );
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(CupertinoIcons.back, size: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    child: Image.asset(
                      'assets/images/python_background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Text(
                      'Instruction | David Rouber',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 86),
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Learn To Code",
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "2.5 Hours | 38 Modules",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  "Flutter is an open-source UI framework developed by Google. It's used for building cross-platform mobile applications. "
                      "\nGoogle created Flutter to help developers build high-performance apps for iOS, Android, Web, and desktop platforms using a single codebase.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 530,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            offset: Offset(6, 6),
                            blurRadius: 12,
                            spreadRadius: 3,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 120,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/python.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  videos[index]["title"]!,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "16 min",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: 10),
                                InkWell(
                                  onTap: () {
                                    navigateToVideoPage(index);
                                  },
                                  child: Icon(CupertinoIcons.play_circle),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}



class Kitob extends StatefulWidget {
  final String videoId;
  const Kitob({super.key, required this.videoId});

  @override
  State<Kitob> createState() => _KitobState();
}

class _KitobState extends State<Kitob> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arduino - First Start"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Player Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 4,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),

            const SizedBox(height: 16),

            // Lesson Summary Section
            Text(
              "Lesson Summary",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "This video provides a step-by-step tutorial on how to set up an Arduino, including connecting it, downloading the Arduino IDE and necessary drivers, and troubleshooting common issues.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),

            // Key Points Section
            Text(
              "Key Points:",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Download and install the Arduino IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install drivers for Chinese Arduino boards."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Connect and configure the Arduino in the IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Upload a sketch and troubleshoot common issues."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install and use libraries in Arduino projects."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Kitob2 extends StatefulWidget {
  final String videoId;
  const Kitob2({super.key, required this.videoId});

  @override
  State<Kitob2> createState() => _Kitob2State();
}

class _Kitob2State extends State<Kitob2> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arduino - First Start"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Player Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 4,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),

            const SizedBox(height: 16),

            // Lesson Summary Section
            Text(
              "Lesson Summary",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "This video provides a step-by-step tutorial on how to set up an Arduino, including connecting it, downloading the Arduino IDE and necessary drivers, and troubleshooting common issues.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),

            // Key Points Section
            Text(
              "Key Points:",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Download and install the Arduino IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install drivers for Chinese Arduino boards."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Connect and configure the Arduino in the IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Upload a sketch and troubleshoot common issues."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install and use libraries in Arduino projects."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Kitob3 extends StatefulWidget {
  final String videoId;
  const Kitob3({super.key, required this.videoId});

  @override
  State<Kitob3> createState() => _Kitob3State();//togri
}
class _Kitob3State extends State<Kitob3> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arduino - First Start"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Player Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 4,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),

            const SizedBox(height: 16),

            // Lesson Summary Section
            Text(
              "Lesson Summary",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "This video provides a step-by-step tutorial on how to set up an Arduino, including connecting it, downloading the Arduino IDE and necessary drivers, and troubleshooting common issues.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),

            // Key Points Section
            Text(
              "Key Points:",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Download and install the Arduino IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install drivers for Chinese Arduino boards."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Connect and configure the Arduino in the IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Upload a sketch and troubleshoot common issues."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install and use libraries in Arduino projects."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class Kitob4 extends StatefulWidget {
  final String videoId;
  const Kitob4({super.key, required this.videoId});

  @override
  State<Kitob4> createState() => _Kitob4State();//togri
}
class _Kitob4State extends State<Kitob4> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arduino - First Start"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Player Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 4,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),

            const SizedBox(height: 16),

            // Lesson Summary Section
            Text(
              "Lesson Summary",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "This video provides a step-by-step tutorial on how to set up an Arduino, including connecting it, downloading the Arduino IDE and necessary drivers, and troubleshooting common issues.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),

            // Key Points Section
            Text(
              "Key Points:",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Download and install the Arduino IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install drivers for Chinese Arduino boards."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Connect and configure the Arduino in the IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Upload a sketch and troubleshoot common issues."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install and use libraries in Arduino projects."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class Kitob5 extends StatefulWidget {
  final String videoId;
  const Kitob5({super.key, required this.videoId});

  @override
  State<Kitob5> createState() => _Kitob5State();
}

class _Kitob5State extends State<Kitob5> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arduino - First Start"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Player Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 4,
              child: YoutubePlayer(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),

            const SizedBox(height: 16),

            // Lesson Summary Section
            Text(
              "Lesson Summary",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "This video provides a step-by-step tutorial on how to set up an Arduino, including connecting it, downloading the Arduino IDE and necessary drivers, and troubleshooting common issues.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),

            // Key Points Section
            Text(
              "Key Points:",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Download and install the Arduino IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install drivers for Chinese Arduino boards."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Connect and configure the Arduino in the IDE."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Upload a sketch and troubleshoot common issues."),
                ),
                ListTile(
                  leading: Icon(Icons.check, color: Colors.green),
                  title: Text("Install and use libraries in Arduino projects."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
