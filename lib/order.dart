import 'package:flutter/material.dart';
import 'package:salesapp/create_order.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 166, 207, 240),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        text('Customer Name:'),
                        const SizedBox(
                          width: 20,
                        ),
                        text('Lalit Sharma'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text('Item List:'),
                        const SizedBox(
                          width: 70,
                        ),
                        text('EMBOSSED'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text('Remarks:'),
                        const SizedBox(
                          width: 68,
                        ),
                        Expanded(
                          child: text(
                              'Dear Jagveer There is a new lead posted with the remarks.'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text('Item Price:'),
                        const SizedBox(
                          width: 58,
                        ),
                        FittedBox(
                          child: text('2000'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text('Item Quantity:'),
                        const SizedBox(
                          width: 37,
                        ),
                        FittedBox(
                          child: text('2'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        text('Amount:'),
                        const SizedBox(
                          width: 73,
                        ),
                        FittedBox(
                          child: text('2000'),
                        ),
                      ],
                    )
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
