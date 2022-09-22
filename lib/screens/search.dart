import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbooking/utils/theme.dart';

import '../utils/size.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = size(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: devicesize.height * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: devicesize.height * 0.05,
              ),
              Text('What are', style: AppTheme().textTheme.displayLarge),
              Text('you looking for?',
                  style: AppTheme().textTheme.displayLarge),
            ],
          ),
        ),
      ),
    );
  }
}
