import 'package:flutter/material.dart';

class FollowUp extends StatefulWidget {
  const FollowUp({Key? key}) : super(key: key);

  @override
  State<FollowUp> createState() => _FollowUpState();
}

class _FollowUpState extends State<FollowUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          leading: GestureDetector(
            onTap: (() => Navigator.pop(context)),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 20, 20, 20),
              size: 18,
            ),
          ),
          title: const Text(
            'Follow-Up Details',
            style:
                TextStyle(fontSize: 18, color: Color.fromARGB(255, 20, 20, 20)),
          ),
        ),
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
                            text('Party Name:'),
                            const SizedBox(
                              height: 10,
                            ),
                            text('Staff id:'),
                            const SizedBox(
                              height: 10,
                            ),
                            text('Remark:'),
                            const SizedBox(
                              height: 10,
                            ),
                            text('Date:'),
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
