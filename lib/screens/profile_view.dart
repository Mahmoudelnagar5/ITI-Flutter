import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/elnagar.png'),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Mahmoud Elnagar',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // الوظيفة
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 20,
                      // color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),

                  Row(
                    children: const [
                      Icon(Icons.email, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'elnagarm852@gmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  Row(
                    children: const [
                      Icon(Icons.phone, color: Colors.green),
                      SizedBox(width: 8),
                      Text('+20 155 848 3168', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
