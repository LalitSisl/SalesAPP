import 'package:flutter/material.dart';

class DailyCalls extends StatefulWidget {
  const DailyCalls({Key? key}) : super(key: key);

  @override
  State<DailyCalls> createState() => _DailyCallsState();
}

class _DailyCallsState extends State<DailyCalls> {
  final _formKey = GlobalKey<FormState>();
  var type;
  var city;
  var comapny;
  var contect;
  var support;
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
          'Daily Calls',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 20, 20, 20)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text('Sales Executive'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Date'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Sub Area'),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    isDense: true, // Added this
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  value: type,
                  hint: const Text(
                    'Select Sub area',
                    style: TextStyle(fontSize: 13),
                  ),
                  dropdownColor: Colors.white,
                  isExpanded: true,

                  iconSize: 20,
                  style: TextStyle(color: Colors.black),

                  items: [
                    'Normal Plan',
                    'EXHB and Survey',
                    'Telephonic',
                    'Video Call',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (salutation) {
                    setState(() {
                      type = salutation;
                    });
                  },
                  //value: dropdownProject,
                  validator: (value) => value == null ? 'field required' : null,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Category'),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    isDense: true, // Added this
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  value: type,
                  hint: const Text(
                    'Select Category',
                    style: TextStyle(fontSize: 13),
                  ),
                  dropdownColor: Colors.white,
                  isExpanded: true,

                  iconSize: 20,
                  style: TextStyle(color: Colors.black),

                  items: [
                    'Normal Plan',
                    'EXHB and Survey',
                    'Telephonic',
                    'Video Call',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (salutation) {
                    setState(() {
                      type = salutation;
                    });
                  },
                  //value: dropdownProject,
                  validator: (value) => value == null ? 'field required' : null,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Calls Made'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Effective Calls'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Quantity'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 7,
              ),
              text('Amount'),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(fontSize: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Dashboard()));
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      'Save',
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 16, 36, 53),
                  ),
                  height: 40,
                ),
              ),
            ]),
      ),
    );
  }

  Widget text(String value) {
    return RichText(
      text: TextSpan(
        text: value,
        style: const TextStyle(
          color: Colors.black,
        ),
        // children: const [
        //   TextSpan(
        //       text: ' *',
        //       style: TextStyle(
        //         color: Colors.red,
        //       ))
        // ]
      ),
    );
  }
}
