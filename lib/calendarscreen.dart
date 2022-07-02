
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}
class _CalendarScreenState extends State<CalendarScreen> {
  double screenHeight = 0;
  double screenWeight = 0;
  Color primary = Color(0xFF2b2d42);
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32),
              alignment: Alignment.centerLeft,
              child: Center(
                child: Text(
                  "My Attendence",
                  style: TextStyle(
                    fontFamily: "Nexa Bold",
                    fontSize: screenWeight / 18,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                bil("01 - Jun"),
                attendenc("Jun 01- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("02 - Jun"),
                attendenc("Jun 02- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("03 - Jun"),
                attendenc("Jun 03- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("04 - Jun"),
                attendenc("Jun 05- Attendence"),
              ],
            ),

            Stack(
              children: [
                bil("06 - Jun"),
                attendenc("Jun 07- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("08 - Jun"),
                attendenc("Jun 08- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("09 - Jun"),
                attendenc("Jun 09- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("10 - Jun"),
                attendenc("Jun 10- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("11 - Jun"),
                attendenc("Jun 11- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("12 - Jun"),
                attendenc("Jun 12- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("13 - Jun"),
                attendenc("Jun 13- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("14 - Jun"),
                attendenc("Jun 14- Attendence"),
              ],
            ),
            Stack(
              children: [
                bil("15 - Jun"),
                attendenc("Jun 15- Attendence"),
              ],
            ),
          ],
        ),
      )
    );
  }

  bil (String magac){
    return Container(
      margin: EdgeInsets.only(top: 32),
      alignment: Alignment.centerLeft,
      child: Text(
        magac,
        style: TextStyle(
            fontFamily: "Nexa Bold",
            fontSize: screenWeight / 18,
            color: Colors.deepOrange
        ),
      ),
    );
  }

  attendenc (String biattend){
    return Container(
      margin: EdgeInsets.only(top: 32),
      alignment: Alignment.centerRight,
      child: Text(
        biattend,
        style: TextStyle(
          fontFamily: "Nexa Bold",
          fontSize: screenWeight / 18,
        ),
      ),
    );
  }


}
