import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:salesapp/Daily_Report/daily_report.dart';
import 'package:salesapp/Dashboard/home.dart';
import 'package:salesapp/FDFM/create_fdfm.dart';
import 'package:salesapp/FDFM/view_fdfm.dart';
import 'package:salesapp/Menu/customers.dart';
import 'package:salesapp/Menu/daily_calles.dart';
import 'package:salesapp/Menu/expenses.dart';
import 'package:salesapp/Menu/follow_up.dart';
import 'package:salesapp/Menu/future_plan.dart';
import 'package:salesapp/Menu/product.dart';
import 'package:salesapp/Menu/report.dart';
import 'package:salesapp/Menu/scheme.dart';
import 'package:salesapp/Menu/survey.dart';
import 'package:salesapp/Menu/target.dart';
import 'package:salesapp/notification.dart';
import 'package:salesapp/order.dart';
import 'package:salesapp/price_list.dart';

import '../Authentication/login.dart';
import '../Menu/event.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    Key? key,
  }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  bool _show = false;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    PriceList(),
    Order(),
    NotificationScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const FittedBox(
          child: Text(
            'Hi User!',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 10, 10, 10)),
          ),
        ),
        actions: [
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => ViewFDFM()));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
              width: 25,
              child: Image.network(
                  "https://img.icons8.com/material-outlined/344/view-file.png",
                color: Colors.blueAccent,),
            ),
          ],
        ),
      ),
          const  SizedBox(width: 10,),

    
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        elevation: 10,
                        child: SizedBox(
                            height: 120,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Confirmation",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  const Text(
                                    "Are you sure to Download FDFM?",
                                  ),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                            onPressed: () async {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Login()));
                                            },
                                            child: const Text(
                                              "Yes",
                                              style: TextStyle(
                                                  color: Colors.black87),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "No",
                                              style: TextStyle(
                                                  color: Colors.black87),
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Image.asset(
                'assets/images/download.png',
                scale: 2.3,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateFDFM()));
            },
            child: const CircleAvatar(
                radius: 11,
                child: Icon(
                  Icons.add,
                  size: 18,
                )),
          ),
          GestureDetector(
            onTap: () {
              showBottomSheet();
            },
            child: Image.asset(
              'assets/images/menu.png',
              scale: 2.5,
            ),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
            // backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 148, 68, 62),
                  size: 25,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/money.png',
                  scale: 4,
                  color: const Color.fromARGB(255, 148, 68, 62),
                ),
                label: 'Price List',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/order.png',
                  scale: 4,
                  color: const Color.fromARGB(255, 148, 68, 62),
                ),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/notification.png',
                  scale: 1.8,
                  color: const Color.fromARGB(255, 135, 66, 61),
                ),
                label: 'Notification',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            // selectedItemColor: Colors.black,
            // unselectedItemColor: Colors.black,
            iconSize: 25,
            onTap: _onItemTapped,
            elevation: 0),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sales Activity',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 60,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DailyReport()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/dailyreport.png',
                                        scale: 2.2,
                                        color: Color.fromARGB(255, 191, 87, 71)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Daily Report',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 60,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Event()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/event.png',
                                        scale: 2.2,
                                        color: const Color.fromARGB(
                                            255, 105, 160, 206)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Event',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 60,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Expenses()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/expenses.png',
                                        scale: 2.4,
                                        color: Color.fromARGB(255, 158, 198, 231)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Expenses',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 60,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Product()));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/about.png',
                                        scale: 3,
                                        color: const Color.fromARGB(
                                            255, 192, 146, 85)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Products',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Target()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/event.png',
                                    scale: 2.5,
                                    color: const Color.fromARGB(
                                        255, 121, 166, 202),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Targets',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Reports',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/move.png',
                                    scale: 4,
                                    color: const Color.fromARGB(
                                        255, 192, 146, 85)),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Emp Move',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FollowUp()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/event.png',
                                    scale: 2.2,
                                    color: const Color.fromARGB(
                                        255, 121, 166, 202),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Follow-up',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Scheme()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/dailyreport.png',
                                      scale: 2,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Schemes',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Survey()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/event.png',
                                      scale: 2.1,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Survey',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Customers()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/expenses.png',
                                      scale: 2.6,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Customers',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Report()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/expenses.png',
                                      scale: 2.6,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Reports',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DailyCalls()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/about.png',
                                      scale: 3,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Daily Calls',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FuturePlan()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/about.png',
                                      scale: 3,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Future Plan',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Newton',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/about.png',
                                      scale: 3.2,
                                      color: const Color.fromARGB(
                                          255, 105, 160, 206)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'About Newton',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.logout,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Logout',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }




}
