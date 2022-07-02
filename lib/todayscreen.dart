import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  final time = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  double screenHeight = 0;
  double screenWeight = 0;
  Color primary = Color(0xFFEEF444C);
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
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Colors.black54,
                fontFamily: "Nexa Light",
                fontSize: screenWeight / 20,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Employee",
              style: TextStyle(
                fontFamily: "Nexa Bold",
                fontSize: screenWeight / 18,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            alignment: Alignment.centerLeft,
            child: Text(
              "Today's Status",
              style: TextStyle(
                fontFamily: "Nexa Bold",
                fontSize: screenWeight / 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 32),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 10, offset: Offset(2, 2))
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Check In",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Nexa Light",
                            fontSize: screenWeight / 20,
                          ),
                        ),
                        Text(
                          "09:30",
                          style: TextStyle(
                            fontFamily: "Nexa Bold",
                            fontSize: screenWeight / 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Check Out",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Nexa Light",
                            fontSize: screenWeight / 20,
                          ),
                        ),
                        Text(
                          "--/--",
                          style: TextStyle(
                            fontFamily: "Nexa Bold",
                            fontSize: screenWeight / 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: "23 ",
                style: TextStyle(
                  color: primary,
                  fontSize: screenWeight/18,
                  fontFamily: "Nexa Bold"
                ),
                children: [
                  TextSpan(
                    text: "Jun 2022",style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWeight/20,

                  )
                  )
                ]
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              '${time}',
              style: TextStyle(
                color: Colors.black54,
                fontFamily: "Nexa Light",
                fontSize: screenWeight / 20,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 24),
            child: Builder(builder: (context){
              final GlobalKey <SlideActionState> key  = GlobalKey();
              return SlideAction(
                text: "Slide to Check Out",
                textStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: screenWeight/20,
                  fontFamily: "Nexa Light"
                ),
                outerColor: Colors.white,
                innerColor: primary,
                key: key,
                onSubmit: (){
                  key.currentState!.reset();

                },
              );
            }),
          )
        ],
      ),
    ));
  }
}
