import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_widget_3.dart';
import 'my_widget_4.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app); //プロジェクトをスコープで囲う
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget4(),
        ),
      ),
    );
  }
}
