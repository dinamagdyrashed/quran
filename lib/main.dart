import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_karem/model/counter_provider.dart';
import 'package:quran_karem/views/evining_azkar.dart';
import 'package:quran_karem/views/home_view.dart';
import 'package:quran_karem/views/morning_azkar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeView(),
          'morning_azkar': (context) => MorningAzkar(),
          'evening_azkar': (context) => EveningAzkar(),
        },
      ),
    );
  }
}
