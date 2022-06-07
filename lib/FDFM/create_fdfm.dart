import 'package:flutter/material.dart';

class CreateFDFM extends StatefulWidget {
  const CreateFDFM({Key? key}) : super(key: key);

  @override
  State<CreateFDFM> createState() => _CreateFDFMState();
}

class _CreateFDFMState extends State<CreateFDFM> {
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
          'Create FDFM',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 20, 20, 20)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text('Staff Member'),
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
                text('Mobile'),
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
                      ),


                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                text('Type'),
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
                      'Select Type',
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
                text('City'),
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
                      'Select City',
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
                text('Companyt name'),
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
                      'Select Company',
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
                text('Contact Person'),
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
                text('Support By'),
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
                      'Select',
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
