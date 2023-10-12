import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({required this.image, required this.iconname});
  final String image;
  final String iconname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 90.0,
            width: 90.0,
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(21)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(-4, -4),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.grey.shade400,
                  offset: Offset(4, 4),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: Image.asset(image),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(iconname),
        ],
      ),
    );
  }
}
