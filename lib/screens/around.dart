import 'package:flutter/material.dart';
import 'package:save_me/constants.dart';
import 'package:save_me/reusables/switch.dart';
import 'package:save_me/screens/alarm.dart';
import 'package:save_me/screens/settings.dart';
import 'package:save_me/screens/sos.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class AroundLess extends StatelessWidget {
  const AroundLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Around();
  }
}

class Around extends StatefulWidget {
  const Around({Key? key}) : super(key: key);

  @override
  State<Around> createState() => _AroundState();
}

class _AroundState extends State<Around> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.supervised_user_circle_rounded,
                      size: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome User',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'example@email.com',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                  Text('Allow Location'),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                  Text('Allow Notification'),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[350],
                    height: 80,
                    child: Center(
                      child: Text(
                        'What is happening around you!',
                        style: TextStyle(
                          color: bgColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                children: [
                  Image.asset(
                    'images/crime.png',
                    width: 180,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Theif breaking into\na car in your\nneighborhood',
                        style: TextStyle(
                          color: bgColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Read more',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                children: [
                  Image.asset(
                    'images/fire.png',
                    width: 180,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        'Fire was lit due\nto gas leak in your\nneighborhood',
                        style: TextStyle(
                          color: bgColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Read more',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      print('Notification is sent successfully');
                    },
                    child: IconButton(
                      onPressed: () {
                        print('Notification sent successfully');
                      },
                      icon: Icon(Icons.emergency),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Around pressed');
                        },
                        icon: Icon(
                          Icons.home,
                          size: 35,
                        ),
                      ),
                      Text('Around'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Alarm pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AlarmLess()),
                          );
                        },
                        icon: Icon(
                          Icons.notification_important_sharp,
                          size: 35,
                        ),
                      ),
                      Text('Alarm'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('SOS pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SosLess()),
                          );
                        },
                        icon: Icon(
                          Icons.phone,
                          size: 35,
                        ),
                      ),
                      Text('SOS'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          print('settings pressed');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsLess()),
                          );
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 35,
                        ),
                      ),
                      Text('Settings'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
