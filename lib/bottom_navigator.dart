import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Button_Screen extends StatefulWidget {
  const Button_Screen({super.key});

  @override
  State<Button_Screen> createState() => _Button_ScreenState();
}

int _selectedIndex = 1;

class _Button_ScreenState extends State<Button_Screen> {
  getContaineIndex() {
    //print(_selectedIndex);
    if (_selectedIndex == 0) {
      return Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.purple,
        ),
      );
    }
    if (_selectedIndex == 1) {
      return Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      );
    } else {
      return Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.brown,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("MyApp"),
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.

              children: [
                Container(
                  height: 100,
                  child: const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Navigator'),
                  ),
                ),
                ListTile(
                  title: const Text('Profile'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Setting'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          body: getContaineIndex(),

          //   bottomNavigationBar: BottomNavigationBar(
          //     items: const <BottomNavigationBarItem>[
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.home),
          //         label: 'Home',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.business),
          //         label: 'Business',
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.school),
          //         label: 'School',
          //       ),
          //     ],
          //     currentIndex: _selectedIndex,
          //     selectedItemColor: Colors.amber[800],
          //     onTap: _onItemTapped,
          //   ),
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.yellow,
            backgroundColor: Colors.white,
            // ignore: prefer_const_literals_to_create_immutables
            items: <Widget>[
              const Icon(Icons.home, size: 30),
              const Icon(Icons.list, size: 30),
              const Icon(Icons.compare_arrows, size: 30),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          )),
    );
  }
}
