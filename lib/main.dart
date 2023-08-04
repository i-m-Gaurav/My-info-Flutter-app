import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'; // Import the material_design_icons_flutter package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SecondScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Image(image: AssetImage('assets/info.png')),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image and name container
         Container(
  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
  alignment: Alignment.center,
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
             BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: const Image(
            image: AssetImage('assets/crop.jpg'),
            fit: BoxFit.fill,
            width: 100,
            height: 100,
          ),
        ),
      ),
      const SizedBox(height: 20),
      const Text(
        'Gaurav Kumar',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ],
  ),
),

          const SizedBox(height: 30),
          // Personal info container
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            
            decoration: BoxDecoration(
              
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Personal Info',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      MdiIcons
                          .emailOutline, // Use the MdiIcons class for the IconData
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Email:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      'indiagauravkumar@gmail.com',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons
                          .phoneOutline, // Use the MdiIcons class for the IconData
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Phone:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '9504779108',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons
                          .cardAccountDetailsOutline, // Use the MdiIcons class for the IconData
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Aadhar:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '718646206300',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons
                          .instagram, // Use the MdiIcons class for the IconData
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Instagram:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    GestureDetector(
                      onTap: () {
                        const instagramUrl =
                            'https://www.instagram.com/i.m.gauravkr/';
                        launch(instagramUrl);
                      },
                      child: const Text(
                        'i.m.gauravkr',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 179, 179, 179)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Academics container
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Academics',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 10),
                const Text(
                  'M.C.A',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'University:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      'Guru Ghasidas Central University',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons.numeric0Box,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Enrollment No.:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      'GGV/22/05019',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons.collage,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '1st Semester:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '8.38 CPGA',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  'B.Sc(IT)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'University:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      'Magadh University',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'College:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      'College of Commerce Arts & Science',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      MdiIcons.percentBox,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Percentage:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '67.93',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  'Intermediate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'School:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '+2 High School, Nawada',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Stream:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      'Science',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Percentage:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '65.6',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      MdiIcons.school,
                      size: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Session:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(), // Add Spacer to push the value to the right
                    const Text(
                      '2015-2017',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 179, 179, 179)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
