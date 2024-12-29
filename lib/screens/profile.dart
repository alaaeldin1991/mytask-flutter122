import 'package:flutter/material.dart';
import 'package:untitled2/widgets/profile_info.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ka8eemhelmy', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Profile Picture
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  // Post, Followers, Following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileInfo('79', 'posts'),
                        ProfileInfo('633', 'followers'),
                        ProfileInfo('1,919', 'following'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Bio Section
              Text(
                'Kareem Ahmed',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'Take everything easy and enjoy 😇😌',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Flutter Developer 💥',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'H Photography 📷\nContact: 01064648972',
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'github.com/Ka8eemHelmy',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Row(
                children: [
                  Text('@ka8eemhelmy', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 16),
                  Text('Kareem Ahmed', style: TextStyle(color: Colors.white)),
                ],
              ),
              SizedBox(height: 16),
              // Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
                      child: Text('Edit profile'),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
                      child: Text('Share profile'),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
                    child: Icon(Icons.person_add),
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Highlights Section (Use a ListView.builder for dynamic items)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/highlight.jpg'), // Replace with your image
                          ),
                          SizedBox(height: 8),
                          Text('Highlight', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Bottom Navigation Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on, color: Colors.white),
                  Icon(Icons.video_library, color: Colors.white60),
                  Icon(Icons.account_box_outlined, color: Colors.white60),
                  Icon(Icons.person_pin_outlined, color: Colors.white60),
                ],
              ),
              Divider(color: Colors.white),
              // Grid of Images (Placeholder)
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: 9, // Number of images in grid
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey, // Placeholder for images
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}

