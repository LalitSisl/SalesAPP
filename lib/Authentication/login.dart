// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';
import '../Dashboard/dashboard.dart';
import '../Network/api.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _empIdController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isLoading = false;
  //final Xml2Json xml2Json = Xml2Json();
  Future<void> login(String user, String pass) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {

        var res= await http.post(Uri.parse(API.LOGIN),headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
            body: {"username":"admin",
              "password":"babg11"}
        );



        var response = await res.body;
        try {
          if (res.statusCode == 200) {
            Xml2Json xml2Json=Xml2Json();

            xml2Json.parse(response);
            var jsonString = xml2Json.toParker();

            print("xml2Json is ${jsonString}");

            var data = jsonDecode(jsonString);

            print("data is ${data['string']}");
          } else {
            setState(() {
              isLoading = false;
            });
            Fluttertoast.showToast(
                msg: "File Size should not exceed 500 KB",
                gravity: ToastGravity.BOTTOM);
          }
        } catch (e) {
          setState(() {
            isLoading = false;
          });
          Fluttertoast.showToast(
              msg: "Something went wrong, try again later",
              gravity: ToastGravity.BOTTOM);
        }
      }
    } on SocketException catch (_) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(
          msg: "No internet connection. Connect to the internet and try again.",
          gravity: ToastGravity.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/logo.jpg',
              scale: 1.6,
            ),
            const Text(
              'Sales Management',
              style: TextStyle(
                  color: Color.fromARGB(255, 60, 79, 112),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: _empIdController,
                              decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(15.0),
                                  labelText: 'Login Id',
                                  border: OutlineInputBorder()),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'The field is mandatory';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(15.0),
                                  labelText: 'Password',
                                  border: OutlineInputBorder()),
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'The field is mandatory';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                /* Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChnagePassword()));*/
                              },
                              child: const Align(
                                alignment: Alignment.topRight,
                                child: Text('Forgot Password?',
                                    style: TextStyle(color: Colors.blue)),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(
                                       builder: (BuildContext context) => Dashboard()));
                                 if (_formKey.currentState!.validate()) {
                                  login(_empIdController.text,
                                      _passwordController.text);
                                }
                              },
                              child: Container(
                                child: Center(
                                  child: isLoading
                                      ? const SizedBox(
                                          width: 23,
                                          height: 23,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ))
                                      : const Text(
                                          'Log in',
                                          textScaleFactor: 1.1,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(255, 16, 36, 53),
                                ),
                                height: 38,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
            // Align(
            //   alignment: FractionalOffset.bottomCenter,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: const [
            //         Text('English'),
            //         Text('Terms'),
            //         Text('Private'),
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
