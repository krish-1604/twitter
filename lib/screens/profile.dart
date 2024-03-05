import 'package:first/home.dart';
import 'package:first/screens/msg.dart';
import 'package:first/screens/noti.dart';
import 'package:first/screens/search.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
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
          Stack(
            children: [
              Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage(
                    "assets/profile_banner.jpg",
                  ),
                  height: 170,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                top: 132,
                left: 9,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage('assets/demo_profile.jpg'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold, // Made 'Edit Profile' bold
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Test User",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "@testuser1",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " Following",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " Followers",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
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
              onPressed: () {},
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
