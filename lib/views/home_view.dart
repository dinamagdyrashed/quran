import 'package:flutter/material.dart';
import 'package:quran_karem/widget/topic.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key});

  final List<String> pageRoutes = [
    'morning_azkar',
    'evening_azkar',
  ];

  @override
  Widget build(BuildContext context) {
    // List of topics
    List<String> topics = [
      'أذكار الصباح',
      'أذكار المساء',
      // Add more topics as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            'أذكار',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.amber,
              ),
              child: const Column(
                children: [
                  Text(
                    'القرآن الكريم',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'القرآن الكريم كاملًا',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: topics.length, // Total number of items
                itemBuilder: (context, index) {
                  return Topic(
                    content: [topics[index]],
                    navigateTo:
                        pageRoutes[index], // Pass the route to navigate to
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
