
import 'package:flutter/material.dart';
import 'package:untitled2/widgets/topic_card.dart';

class TopicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TopicSelectionScreen(),
    );
  }
}

class TopicSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Pinterest"),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              // Handle "Next" button press
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pick 5 or more topics",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,  // Number of columns
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 1.5, // Adjust based on your needs
                children: [
                  TopicCard(name: 'DIY and Home Improvement',image: 'assets/images/fla.jpg',),
                  TopicCard(name: 'Home Decor',image:'assets/images/s.jpg' ,),
                  TopicCard(name: 'Food and Drink',image: 'assets/images/spotyfiy.jpg',),
                  TopicCard(name: 'Humor',image: 'assets/images/skype.jpg',),
                  TopicCard(name: 'Travel',image: 'assets/images/catttor.jpg',),
                  TopicCard(name: 'Technology',image: 'assets/images/catttor.jpg',),
                  TopicCard(name: 'Men\'s Fashion',image: 'assets/images/squirtle.jpg',),
                  TopicCard(name: 'Art',image: 'assets/images/squirtle.jpg',),
                  TopicCard(name: 'Design',image: 'assets/images/bb.png',),
                  TopicCard(name: 'Photography',image: 'assets/images/venusaur.jpg',),
                  TopicCard(name: 'Tattoos and Body Art',image: 'assets/images/skype.jpg',),
                  TopicCard(name: 'Funny Pictures',image: 'assets/images/skype.jpg',),
                  TopicCard(name: 'Gardening',image: 'assets/images/venusaur.jpg',),
                  TopicCard(name: 'Quotes',image: 'assets/images/nnat.jpg',),
                  TopicCard(name: 'Animals',image: 'assets/images/nnat.jpg',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
