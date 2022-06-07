import 'package:flutter/material.dart';

class PriceList extends StatefulWidget {
  const PriceList({Key? key}) : super(key: key);

  @override
  State<PriceList> createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  var type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 7,
              ),
              text('Zone'),
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
                    'Select Zone',
                    style: TextStyle(fontSize: 13),
                  ),
                  dropdownColor: Colors.white,
                  isExpanded: true,
                  iconSize: 20,
                  style: const TextStyle(color: Colors.black),
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
              text('Products'),
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
                    'Select Product',
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
              text('Product Type'),
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
                    'Select Product',
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
              text('WEF Date'),
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
                      'Fetch Record',
                      textScaleFactor: 1.4,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 16, 36, 53),
                  ),
                  height: 45,
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
          children: const [
            TextSpan(
                text: ' *',
                style: TextStyle(
                  color: Colors.red,
                ))
          ]),
    );
  }
}
