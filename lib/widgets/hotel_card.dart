import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/size.dart';
import '../utils/theme.dart';

class Hotelcard extends StatelessWidget {
  final String hotelUrl;

  const Hotelcard({Key? key, required this.hotelUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devicesize = size(context);
    return Card(
      color: AppTheme().colorScheme.primary,
      elevation: devicesize.height * 0.005,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(devicesize.height * 0.025),
      ),
      child: Padding(
        padding: EdgeInsets.all(devicesize.height * 0.02),
        child: Container(
          height: devicesize.height * 0.23,
          width: devicesize.height * 0.23,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(hotelUrl),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(devicesize.height * 0.025))),
        ),
      ),
    );
  }
}
