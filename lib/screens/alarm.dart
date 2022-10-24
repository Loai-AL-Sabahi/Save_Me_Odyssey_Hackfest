import 'package:flutter/material.dart';
import 'package:save_me/constants.dart';
import 'package:save_me/reusables/switch.dart';
import 'package:save_me/screens/settings.dart';
import 'package:save_me/screens/sos.dart';
import 'package:save_me/screens/around.dart';

class AlarmLess extends StatelessWidget {
  const AlarmLess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Alarm();
  }
}

class Alarm extends StatefulWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Text(
            'Alarm',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: Row(
                children: [
                  Text(
                    'Activate Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
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
                    height: 150,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Activating the alarm will show an icon on your lockscreen that you can access quickly if you are in danger. This alarm will notify the nearest police station, your neighbors etc.',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: Row(
                children: [
                  Text(
                    'Notify Police',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: Row(
                children: [
                  Text(
                    'Notify Neighbors',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: Row(
                children: [
                  Text(
                    'Notify Family Members',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: Row(
                children: [
                  Text(
                    'Notify Friends',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
              child: Row(
                children: [
                  Text(
                    'Notify Others',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  SwitchScreen(),
                ],
              ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AroundLess()),
                          );
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
