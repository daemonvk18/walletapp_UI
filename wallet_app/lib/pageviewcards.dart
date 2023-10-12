import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageViewCards extends StatelessWidget {
  PageViewCards(
      {required this.visa,
      required this.amount,
      required this.pinnumber,
      required this.date,
      required this.containercolor,
      required this.image});
  final String visa;
  final String amount;
  final String pinnumber;
  final String date;
  final Color containercolor;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        decoration: BoxDecoration(
            image: DecorationImage(image: image, fit: BoxFit.cover),
            color: containercolor,
            borderRadius: BorderRadius.all(Radius.circular(37))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(visa,
                    style: GoogleFonts.varelaRound(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Balance",
                  style: GoogleFonts.varelaRound(
                      color: Colors.white, fontSize: 18.0),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(amount,
                    style: GoogleFonts.varelaRound(
                        fontSize: 43.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pinnumber,
                  style: GoogleFonts.varelaRound(
                      fontSize: 19.0, color: Colors.white),
                ),
                Text(
                  date,
                  style: GoogleFonts.varelaRound(
                      fontSize: 19.0, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
