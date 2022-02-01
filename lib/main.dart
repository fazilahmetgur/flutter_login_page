//ignore: prefer_const_constructors
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber.shade200,
        // ignore: prefer_const_constructors
        appBar: AppBar(
          title: const Text('Login Page Examples'),
          backgroundColor: Color(0xFF00512D),
        ),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.check),
            backgroundColor: new Color(
              (0xFF00512D),
            ),
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            gapLocation: GapLocation.center,
            iconSize: 30,
            icons: [
              Icons.home,
              Icons.search,
              Icons.account_box_rounded,
              Icons.manage_accounts_rounded,
            ],
            activeIndex: 3,
            onTap: (onTap) {}),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/image/kahvee.jpg'),
                radius: 70,
              ),
              Text(
                'Tahirli Kahvecisi',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 45),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFCF9F69),
                ),
                child: (Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'e-mail adresinizi giriniz...',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 45),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFCF9F69),
                ),
                child: (Row(
                  children: [
                    Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'sifrenizi giriniz...',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
