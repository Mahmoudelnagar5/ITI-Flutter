import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  // List of players with their details
  final List<Map<String, String>> players = const [
    {
      'name': 'Lionel Messi',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/lionel-messi-argentina.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Cristiano Ronaldo',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/cristiano-ronaldo-al-nassr.JPG?q=49&fit=crop&w=750&h=422&dpr=2',
    },
    {
      'name': 'Harry Kane',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/harry-kane-england.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Cole Palmer',
      'position': 'Midfielder',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/mixcollage-05-may-2024-02-50-pm-9702.jpg?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Mohamed Salah',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/mohamed-salah-egypt.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Neymar Jr.',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/neymar-brazil.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Kylian Mbappé',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/08/mixcollage-20-aug-2024-06-15-pm-2679.jpg?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Erling Haaland',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/erling-haaland-manchester-city.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Lionel Messi',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/lionel-messi-argentina.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Cristiano Ronaldo',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/cristiano-ronaldo-al-nassr.JPG?q=49&fit=crop&w=750&h=422&dpr=2',
    },
    {
      'name': 'Harry Kane',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/harry-kane-england.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Cole Palmer',
      'position': 'Midfielder',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/mixcollage-05-may-2024-02-50-pm-9702.jpg?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Mohamed Salah',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/mohamed-salah-egypt.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Neymar Jr.',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/neymar-brazil.JPG?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Kylian Mbappé',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/08/mixcollage-20-aug-2024-06-15-pm-2679.jpg?q=49&fit=crop&w=825&dpr=2',
    },
    {
      'name': 'Erling Haaland',
      'position': 'Forward',
      'image':
          'https://static0.givemesportimages.com/wordpress/wp-content/uploads/2024/05/erling-haaland-manchester-city.JPG?q=49&fit=crop&w=825&dpr=2',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Players List'),
        backgroundColor: const Color(0xFF007E9F),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(12),
        itemCount: players.length,
        itemBuilder: (context, index) {
          final player = players[index];
          return FadeInLeft(
            duration: Duration(milliseconds: 800),
            child: Card(
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        player['image']!,
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          player['name']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          player['position']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
