import 'package:first/home.dart';
import 'package:first/screens/msg.dart';
import 'package:first/screens/noti.dart';
import 'package:first/screens/profile.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFF5A5A5A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
              onPressed: () {},
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Msg()));
              },
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
