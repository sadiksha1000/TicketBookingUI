import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbooking/utils/size.dart';
import 'package:ticketbooking/utils/theme.dart';
import 'package:ticketbooking/widgets/flight_card.dart';
import 'package:ticketbooking/widgets/hotel_card.dart';

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
                horizontal: size(context).width * 0.045,
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
                    height: devicesize.height * 0.25,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const FlightCard(
                          originShort: 'NYC',
                          origin: 'NewYork',
                          hour: '8',
                          min: '30',
                          destination: 'London',
                          destinationShort: 'LDN',
                          date: '1 May',
                          time: '08:00 AM',
                          number: '23',
                        ),
                        SizedBox(width: devicesize.height * 0.015),
                        const FlightCard(
                          originShort: 'KTM',
                          origin: 'Kathmandu',
                          hour: '15',
                          min: '30',
                          destination: 'Finland',
                          destinationShort: 'FIN',
                          date: '2 Sept',
                          time: '03:00 AM',
                          number: '16',
                        ),
                        SizedBox(width: devicesize.height * 0.015),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size(context).width * 0.057,
                vertical: size(context).width * 0.057,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  SizedBox(height: devicesize.height * 0.015),
                  Container(
                    height: devicesize.height * 0.27,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Hotelcard(
                            hotelUrl:
                                "https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768"),
                        Hotelcard(
                            hotelUrl:
                                "https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg"),
                        Hotelcard(
                            hotelUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNtjcbeobPeIBoY3L8srq69glC2CCNucKrYg&usqp=CAU"),
                        Hotelcard(
                            hotelUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu839nsXjyzcl3LfblX3YsQiysoDLDFrxdkw&usqp=CAU")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
