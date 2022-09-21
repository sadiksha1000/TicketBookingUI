import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/size.dart';
import '../utils/theme.dart';

class FlightCard extends StatelessWidget {
  final String origin;
  final String originShort;
  final String destination;
  final String destinationShort;
  final String hour;
  final String min;
  final String date;
  final String time;
  final String number;

  const FlightCard({
    Key? key,
    required this.origin,
    required this.originShort,
    required this.destination,
    required this.destinationShort,
    required this.hour,
    required this.min,
    required this.date,
    required this.time,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = size(context);
    return Column(
      children: [
        Container(
          width: devicesize.height * 0.43,
          height: devicesize.height * 0.095,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                devicesize.height * 0.025,
              ),
              topRight: Radius.circular(
                devicesize.height * 0.025,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: devicesize.height * 0.018,
              horizontal: devicesize.height * 0.027,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      originShort,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.028,
                          ),
                    ),
                    Text(
                      origin,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.02,
                          ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                          size: devicesize.height * 0.015,
                        ),
                        Icon(
                          FluentSystemIcons.ic_fluent_airplane_filled,
                          color: Colors.white,
                          size: devicesize.height * 0.03,
                        ),
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.white,
                          size: devicesize.height * 0.015,
                        )
                      ],
                    ),
                    Text(
                      '$hour H $min M',
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.02,
                          ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      destinationShort,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.028,
                          ),
                    ),
                    Text(
                      destination,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.02,
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: devicesize.height * 0.2158,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Container(
                  width: devicesize.height * 0.028,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    border: Border.all(
                      width: 0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        devicesize.height * 0.025,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: devicesize.height * 0.20,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Container(
                  width: devicesize.height * 0.028,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    border: Border.all(
                      width: 0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        devicesize.height * 0.025,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: devicesize.height * 0.20,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                Container(
                  width: devicesize.height * 0.028,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    border: Border.all(
                      width: 0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        devicesize.height * 0.025,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: devicesize.height * 0.215,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                Container(
                  width: devicesize.height * 0.028,
                  height: devicesize.height * 0.017,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    border: Border.all(
                      width: 0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        devicesize.height * 0.025,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: devicesize.height * 0.43,
          height: devicesize.height * 0.077,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                devicesize.height * 0.025,
              ),
              bottomRight: Radius.circular(
                devicesize.height * 0.025,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: devicesize.height * 0.0045,
              horizontal: devicesize.height * 0.025,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.025,
                          ),
                    ),
                    Text(
                      'Date',
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.018,
                          ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.025,
                          ),
                    ),
                    Text(
                      'Departure Time',
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.018,
                          ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      number,
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.025,
                          ),
                    ),
                    Text(
                      'Number',
                      style: AppTheme().textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: devicesize.height * 0.018,
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
