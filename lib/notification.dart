import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 191, 200, 209),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text('Id:'),
                        const SizedBox(
                          height: 10,
                        ),
                        text('Subject:'),
                        const SizedBox(
                          height: 10,
                        ),
                        text('Description:'),
                        const SizedBox(
                          height: 10,
                        ),
                        text('Employee:'),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text('Shri durga timbur treading go'),
                        const SizedBox(
                          height: 10,
                        ),
                        text('Admin'),
                        const SizedBox(
                          height: 10,
                        ),
                        text('text44'),
                        const SizedBox(
                          height: 10,
                        ),
                        text('28-06-2019'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    ));
  }

  Widget text(String text) {
    return Text(
      text,
      style: TextStyle(),
    );
  }
}
