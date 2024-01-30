import 'dart:io';

import 'package:flutter/material.dart';
import 'package:helloworld/MyObject.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

//   class MyHomePage extends StatefulWidget {
//     State<MyHomePage>
//   }
// }

//   class _MyHomePageState extends State<MyHomePage> {

//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Counter Page'),
        // actions: [
        //   IconButton(
        //     onPressed: _decrement,
        //     icon: const Icon(Icons.remove),
        //   ),
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // $(MyObject value =  MyObject());
            Text('Giá trị hiện tại: ${MyObject.value}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    MyObject.decrease();
                    setState(() {});
                  },
                  icon: const Icon(Icon.remove),
                  label: const Text('Giảm'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    MyObject.increase();
                    setState(() {});
                  },
                  icon: const Icon(Icon.add),
                  label: const Text('Tăng'),
                )
              ],
            ),
          ],
        ),
      ),
    );

    floatingActionButton:
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          onPressed: _decrement,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 50), // Khoảng cách giữa hai nút
        FloatingActionButton(
          onPressed: _increment,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  TextField(
    keyboardType: TextInputType.number,
    decoration: const InputDecoration(hintText: 'Nhập số nguyên n: '),
    {int n = int.parse(stdin.readLineSync())},
    onChanged: (value){
      n= int.parse(value);
    },
    contentPadding:
      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  )
  FloatingActionButton(
          onPressed: MyObject.power(),
          child: const Icon(Icons.add),
        )
}