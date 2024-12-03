import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 176, 219, 163),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 73, 231, 25),
          title: const Text(
            'Developer Profile 🌿',
            style: TextStyle(
              fontFamily: 'RobotoSlab',
              fontSize: 40,
              color: Color.fromARGB(255, 3, 87, 34),
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John "JC" Leonardo',
                        style: TextStyle(
                          fontFamily: 'ProtestRevolution',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 214, 116, 96),
                        ),
                      ),
                      Text(
                        '»📲 Mobile Developer (ish?)',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                      Text(
                        '» 🏋🏽‍♂️ Executive engineer specializing in the movement of heavy metals',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                      Text(
                        '» 🍱 Nutrient Partitioning specialist focusing on growth',
                        style: TextStyle(fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'About:',
                style: TextStyle(
                  fontFamily: 'ProtestRevolution',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 116, 96),
                ),
              ),
            ),
            const Text(
              'Learning how to develop mobile apps, hoping to master it someday.',
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'My Socials:',
                style: TextStyle(
                  fontFamily: 'ProtestRevolution',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 116, 96),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(FontAwesomeIcons.google,
                      size: 30, color: Color.fromARGB(255, 220, 39, 39)),
                ),
                SizedBox(width: 16),
                IconButton(
                  onPressed: null,
                  icon: Icon(FontAwesomeIcons.facebook,
                      size: 30, color: Color.fromARGB(255, 11, 20, 184)),
                ),
                SizedBox(width: 16),
                IconButton(
                  onPressed: null,
                  icon: Icon(FontAwesomeIcons.xTwitter,
                      size: 30, color: Colors.black),
                ),
                SizedBox(width: 16),
                IconButton(
                  onPressed: null,
                  icon: Icon(FontAwesomeIcons.github,
                      size: 30, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Hobbies:',
                style: TextStyle(
                  fontFamily: 'ProtestRevolution',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 116, 96),
                ),
              ),
            ),
            const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '» 🎮 Gaming',
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                  ),
                  Center(
                    child: Text(
                      '» 🫕 Cooking',
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                  ),
                  Center(
                    child: Text(
                      '» 💪🏽 Working Out',
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                  ),
                  Center(
                    child: Text(
                      '» 🐸 Meme Farming',
                      style: TextStyle(fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Text(
                'Specially Curated Memes',
                style: TextStyle(
                  fontFamily: 'ProtestRevolution',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 116, 96),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: memes.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  memes[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  final List<String> memes = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];
}
