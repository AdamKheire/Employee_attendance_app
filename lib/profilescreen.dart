
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
     child: Column(
         children: [
           Container(
             margin: EdgeInsets.only(top: 20),
             child: Text("Employee Profile", style: TextStyle(fontSize: 35,color: Colors.deepOrange),),
           ),
            SizedBox(height: 20),
           Container(
             color: Colors.tealAccent.withOpacity(0.5),
             child: ListTile(
               title: Text("Osman Diriye", style: TextStyle(fontSize: 25),),
               subtitle: Text("Fablab coord",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/osman.jpg"),
               ),
             ),
           ),
           SizedBox(height: 20),
            Container(
             color: Colors.teal.withOpacity(0.5),
             child: ListTile(
               title: Text("Omar abdi ali", style: TextStyle(fontSize: 25),),
               subtitle: Text("Video Editor",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user2.png"),

               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.blue.withOpacity(0.5),
             child: ListTile(
               title: Text("Husni abdikarim", style: TextStyle(fontSize: 25),),
               subtitle: Text("software eng",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user3.png"),

               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.red.withOpacity(0.5),
             child: ListTile(
               title: Text("jone ali ju", style: TextStyle(fontSize: 25),),
               subtitle: Text("staf ",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user4.png"),

               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.greenAccent.withOpacity(0.5),
             child: ListTile(
               title: Text(" Hussein Hassan", style: TextStyle(fontSize: 25),),
               subtitle: Text("small businesss owner",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user5.png"),

               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.pinkAccent.withOpacity(0.5),
             child: ListTile(
               title: Text(" James Swith", style: TextStyle(fontSize: 25),),
               subtitle: Text("Software Delveloper ",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user6.png"),
               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.lightBlue.withOpacity(0.5),
             child: ListTile(
               title: Text("Hassan Abdi Ali", style: TextStyle(fontSize: 25),),
               subtitle: Text("CEO or Hormud",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user7.png"),
               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.cyanAccent.withOpacity(0.5),
             child: ListTile(
               title: Text("Ahmed farah Abdi", style: TextStyle(fontSize: 25),),
               subtitle: Text("Coder",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user8.png"),

               ),
             ),
           ),
           SizedBox(height: 20),
           Container(
             color: Colors.orange.withOpacity(0.5),
             child: ListTile(
               title: Text(" Ali Omar jamac", style: TextStyle(fontSize: 25),),
               subtitle: Text("Editor",style: TextStyle(fontSize: 20),),
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: AssetImage("images/user9.png"),

               ),
             ),
           ),
         ],
     ),
        ),
      )
    );
  }
}
