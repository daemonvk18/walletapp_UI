import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/bigbars.dart';
import 'package:wallet_app/buttons.dart';
import 'package:wallet_app/pageviewcards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(CupertinoIcons.money_dollar),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              )),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text(
                "My",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 35.0),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                "Cards",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 260,
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                PageViewCards(
                  visa: "VISA",
                  amount: "\$5,250.20",
                  pinnumber: "****3456",
                  date: "10/24",
                  containercolor: Color.fromARGB(255, 27, 58, 234),
                  image: AssetImage("Assets/background1.jpg"),
                ),
                PageViewCards(
                  visa: "VISA",
                  amount: "4,732.75",
                  pinnumber: "****6543",
                  date: "09/27",
                  containercolor: Colors.pink,
                  image: AssetImage("Assets/background2.jpg"),
                ),
              ],
            ),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: _controller, // PageController
              count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.blue,
              ), // your preferred effect
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 140.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Buttons(
                  image: "Assets/send.png",
                  iconname: "send",
                ),
                Buttons(
                  image: "Assets/bill.png",
                  iconname: "bills",
                ),
                Buttons(
                  image: 'Assets/transaction.png',
                  iconname: "transcations",
                ),
                Buttons(image: 'Assets/atm-card.png', iconname: "cards"),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Column(
            children: [
              BigBars(
                gradient1: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepPurple.shade300,
                      Colors.deepPurple,
                    ]),
                imagestring: "Assets/analytics.png",
                title: "Statistics",
                subtitle: "paymnets and income",
              ),
              BigBars(
                  gradient1: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      const Color.fromARGB(255, 85, 166, 233),
                      Colors.blue
                    ],
                  ),
                  imagestring: "Assets/transaction.png",
                  subtitle: "Transcations History",
                  title: "Transactions"),
              BigBars(
                gradient1: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepPurple.shade300,
                      Colors.deepPurple,
                    ]),
                imagestring: "Assets/analytics.png",
                title: "Statistics",
                subtitle: "paymnets and income",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
