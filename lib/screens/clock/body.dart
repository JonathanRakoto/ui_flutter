import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ui_flutter/components/card/clock/index.dart';
import 'package:ui_flutter/components/clock/digital.dart';
import 'package:ui_flutter/constants/size.dart';

class BodyClock extends HookWidget {
  final TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    final timeOfDay = useState(_timeOfDay);
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        timeOfDay.value = TimeOfDay.now();
      }
    });

    calculTime(int time, int jetLag) {
      int result = time + jetLag;
      if (result >= 24) {
        result = result - 24;
      }
      return result;
    }

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Paris, France',
                  style: Theme.of(context).textTheme.bodyText1),
              DigitalClock(timeOfDay: timeOfDay.value),
              VerticalSpacing(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      country: 'New York, USA',
                      timeZone: '-6 HRS | AEST',
                      time: '${calculTime(timeOfDay.value.hour, -6)}:${timeOfDay.value.minute}',
                      timeOfDay: timeOfDay,
                      iconSrc: 'assets/icons/Liberty.svg',
                    ),
                    CountryCard(
                      country: 'Sidney, AU',
                      timeZone: '+9 HRS | EST',
                      time: '${calculTime(timeOfDay.value.hour, 9)}:${timeOfDay.value.minute}',
                      timeOfDay: timeOfDay,
                      iconSrc: 'assets/icons/Sydney.svg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
