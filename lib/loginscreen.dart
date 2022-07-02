import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'home.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController  idController = TextEditingController();
  TextEditingController  passController = TextEditingController();
  double screenHeight = 0;
  double screenWeight = 0;
  Color primary = Color(0xFF2b2d42);
  @override
  Widget build(BuildContext context) {
    final bool iskeyboardvisible = KeyboardVisibilityProvider.isKeyboardVisible(context);
    screenHeight = MediaQuery.of(context).size.height;
    screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            iskeyboardvisible ? SizedBox(height: screenHeight/16) : Container(
              height: screenHeight / 2.5,
              width: screenWeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
                color: primary,
              ),
              child: Center(
                child: Icon(Icons.person,
                    color: Colors.white, size: screenWeight / 5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight / 15,
                bottom: screenWeight / 20,
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: screenWeight / 18, fontFamily: "Nexa Bold"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenWeight / 12),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  fieldTitle("Employee ID"),
                  cutomField("Enter your employee id",idController,false),
                  fieldTitle("Password"),
                  cutomField("Enter your password",passController,true),

                  TextButton(
                    onPressed: (){
                      setState(() {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: screenHeight/40),
                      height: 60,
                      width: screenWeight,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Center(
                        child: Text("LOGIN",
                        style: TextStyle(
                          fontFamily: "Nexa Bold",
                          fontSize: screenWeight/26,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget fieldTitle(String title){
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
            fontSize: screenWeight / 26, fontFamily: "Nexa Bold"),
      ),
    );
  }

  Widget cutomField(String hint, TextEditingController controller, bool obsecure){
    return  Container(
      margin: EdgeInsets.only(bottom: 12),
      width: screenWeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: screenWeight / 6,
            child: Icon(
              Icons.person,
              color: primary,
              size: screenWeight/15,
            ),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.only(right: screenWeight/12),
              child: TextFormField(
                controller: controller,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight / 35,
                  ),
                  border: InputBorder.none,
                  hintText: hint,
                ),
                maxLines: 1,
                obscureText: obsecure,
              ),
            ),
          )
        ],
      ),
    );
  }

}
