import 'package:flutter/material.dart';

class AnimationRotateStateful extends StatefulWidget {
  const AnimationRotateStateful({Key? key}) : super(key: key);

  @override
  _AnimationRotateStatefulState createState() =>
      new _AnimationRotateStatefulState();
}

class _AnimationRotateStatefulState extends State<AnimationRotateStateful>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  _AnimationRotateStatefulState();

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RotationTransition(
            turns: controller,
            child: const ColoredBox(
              color: Colors.red,
              child: SizedBox(
                width: 200,
                height: 200,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              if (controller.isCompleted) {
                controller.reset();
              }
              controller.animateTo(controller.value + .25);
            },
            child: const Text(
              'Rotate',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
