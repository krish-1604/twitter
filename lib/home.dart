import 'package:first/screens/msg.dart';
import 'package:first/screens/noti.dart';
import 'package:first/screens/profile.dart';
import 'package:first/screens/search.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textEditingController = TextEditingController();
  double _boxHeight = 120.0;

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
          SizedBox(
            height: 20,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: _boxHeight,
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8.0,
                  left: 16.0,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.blue,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/demo_profile.jpg',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 64.0,
                  right: 16.0,
                  child: TextField(
                    controller: _textEditingController,
                    onChanged: (value) {
                      setState(() {
                        _boxHeight = value.isEmpty ? 120.0 : 250.0;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'What is Happening?!',
                      hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                    style: TextStyle(color: Colors.black),
                    maxLines: null,
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  right: 16.0,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Post",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          SizedBox(width: 27.4),
          Container(
            child: IconButton(
              onPressed: () {},
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
