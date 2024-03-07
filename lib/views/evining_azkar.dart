import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_karem/model/counter_provider.dart';
import 'package:quran_karem/widget/doaa.dart';

class EveningAzkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أذكار المساء'),
      ),
      body: ListView.builder(
        itemCount: 6, // Number of times to repeat the widget
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChangeNotifierProvider(
                create: (context) => CounterProvider(),
                child: Consumer(
                  builder: (context, value, _) {
                    return Doaa(
                        onTap: () {
                          context.read<CounterProvider>().decrement();
                        },
                        counter: context
                            .watch<CounterProvider>()
                            .counter
                            .toString());
                  },
                )),
          );
        },
      ),
    );
  }
}
