import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'hooks/timer_hook.dart';

class TimerHookWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final timerValue = useInfiniteTimer(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer using hook'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${timerValue}'),
          ],
        ),
      ),
    );
  }
}
