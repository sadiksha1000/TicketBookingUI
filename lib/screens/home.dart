import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbooking/utils/size.dart';
import 'package:ticketbooking/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = size(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: devicesize.height * 0.04,
                horizontal: devicesize.height * 0.025,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: AppTheme().textTheme.subtitle2!.copyWith(
                              fontSize: devicesize.height * 0.023,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: devicesize.height * 0.01,
                      ),
                      Text(
                        'Book Tickets',
                        style: AppTheme().textTheme.subtitle2!.copyWith(
                              fontSize: devicesize.height * 0.0225,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: devicesize.height * 0.1,
                    width: devicesize.height * 0.1,
                    child: Image.asset(
                      "lib/assets/images/airplane.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size(context).width * 0.057,
                vertical: size(context).width * 0.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming Flights',
                        style: AppTheme().textTheme.subtitle2!.copyWith(
                              fontSize: devicesize.height * 0.023,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'View all',
                        style: AppTheme().textTheme.subtitle2!.copyWith(
                              fontSize: devicesize.height * 0.0198,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: devicesize.height * 0.01,
                  ),
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
                                'NYC',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.028,
                                    ),
                              ),
                              Text(
                                'New-York',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
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
                                '8H 30M',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.02,
                                    ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'LDN',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.028,
                                    ),
                              ),
                              Text(
                                'London',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
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
                            width: devicesize.height * 0.215,
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
                            width: devicesize.height * 0.2158,
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
                                '1 May',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.025,
                                    ),
                              ),
                              Text(
                                'Date',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.018,
                                    ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '08:00 AM',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.025,
                                    ),
                              ),
                              Text(
                                'Departure Time',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.018,
                                    ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '23',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: devicesize.height * 0.025,
                                    ),
                              ),
                              Text(
                                'Number',
                                style: AppTheme().textTheme.subtitle1!.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size(context).width * 0.057,
                vertical: size(context).width * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hotels',
                    style: AppTheme().textTheme.subtitle2!.copyWith(
                          fontSize: devicesize.height * 0.023,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'View all',
                    style: AppTheme().textTheme.subtitle2!.copyWith(
                          fontSize: devicesize.height * 0.0198,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
