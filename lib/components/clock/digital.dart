import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DigitalClock extends HookWidget {
  const DigitalClock({
    Key key,
    @required this.timeOfDay,
  }) : super(key: key);

  final TimeOfDay timeOfDay;

  period(hour) {
    if (hour < 6) return 'Nuit';
    if (6 <= hour && hour < 13) return 'Matin';
    if (13 <= hour && hour < 19) return 'Après-Midi';
    return 'Soir';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${timeOfDay.hour}:${timeOfDay.minute}',
            style: Theme.of(context).textTheme.headline1),
        SizedBox(width: 5),
        Text(
          period(timeOfDay.hour),
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
