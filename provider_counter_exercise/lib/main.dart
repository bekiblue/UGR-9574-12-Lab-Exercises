import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class CounterModel with ChangeNotifier {
  int count = 0;

  increment() {
    count++;
    notifyListeners();
  }

  decrement() {
    count--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter counter app using provider state management',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterModel counter = Provider.of<CounterModel>(context, listen: false);

    return Scaffold(
      body: Consumer<CounterModel>(builder: (context, notifier, child) {
        return Center(
          child: Text(
            style: TextStyle(fontSize: 25),
            "${notifier.count}",
          ),
        );
      }),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counter.increment();
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              counter.decrement();
            },
          )
        ],
      ),
    );
  }
}
