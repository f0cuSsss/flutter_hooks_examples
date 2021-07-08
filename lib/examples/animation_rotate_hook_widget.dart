import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimationRotateHookStateful extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: Duration(milliseconds: 800));
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
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
