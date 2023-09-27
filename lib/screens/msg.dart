import 'package:first/home.dart';
import 'package:first/screens/profile.dart';
import 'package:first/screens/search.dart';
import 'package:flutter/material.dart';

class Msg extends StatelessWidget {
  const Msg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040404),
      appBar: AppBar(
        backgroundColor: Color(0xFF040404),
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage("assets/logo.png"),
            height: 40,
            width: 40,
          ),
        ),
      ),
      body: ListView(),
      bottomNavigationBar: Row(
        children: [
          SizedBox(width: 40),
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
              color: Colors.white,
            ),
          ),
          SizedBox(width: 40),
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
              color: Colors.white,
            ),
          ),
          SizedBox(width: 40),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Msg()));
              },
              icon: Icon(
                Icons.message_rounded,
                size: 30,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(width: 40),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              icon: Icon(
                Icons.face,
                size: 30,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(width: 40),
        ],
      ),
    );
  }
}
