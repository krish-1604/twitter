import 'package:first/home.dart';
import 'package:first/screens/noti.dart';
import 'package:first/screens/profile.dart';
import 'package:first/screens/search.dart';
import 'package:flutter/material.dart';

class Msg extends StatelessWidget {
  const Msg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage("assets/logo_final.png"),
            height: 40,
            width: 40,
          ),
        ),
      ),
      body: ListView(),
      bottomNavigationBar: Row(
        children: [
          SizedBox(width: 27.4),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 27.4),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 27.4),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Noti()));
              },
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 27.4),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mail,
                size: 30,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 27.4),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 27.4),
        ],
      ),
    );
  }
}
