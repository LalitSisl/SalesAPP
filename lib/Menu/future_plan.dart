import 'package:flutter/material.dart';

class FuturePlan extends StatefulWidget {
  const FuturePlan({Key? key}) : super(key: key);

  @override
  State<FuturePlan> createState() => _FuturePlanState();
}

class _FuturePlanState extends State<FuturePlan> {
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
          'Future Plane',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 20, 20, 20)),
        ),
      ),
    );
  }
}
