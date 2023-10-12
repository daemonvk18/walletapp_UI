import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigBars extends StatelessWidget {
  BigBars(
      {required this.subtitle,
      required this.title,
      required this.imagestring,
      required this.gradient1});
  final String title;
  final String subtitle;
  final String imagestring;
  final LinearGradient gradient1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.center,
                    child: Image.asset(imagestring),
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        gradient: gradient1,
                        borderRadius: BorderRadius.all(Radius.circular(21))),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(subtitle),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.forward)),
          ],
        ),
      ),
    );
  }
}
