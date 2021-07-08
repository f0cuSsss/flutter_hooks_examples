import 'package:flutter/material.dart';

import 'examples/animation_rotate_hook_widget.dart';
import 'examples/animation_rotate_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter hooks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home: const TimerHookWidget(),
      // home: const AnimationRotateStateful(),
      home: AnimationRotateHookStateful(),
    );
  }
}
