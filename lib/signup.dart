import 'package:first/home.dart';
import 'package:first/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040404),
      body: ListView(
        children: [
          SizedBox(height: 90),
          Image.asset(
            'assets/logo.png',
            width: 150,
            height: 150,
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              "Happening now!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Join today.",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Color(0xFF040404),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Color(0xFF040404),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email ID',
                hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Color(0xFF040404),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
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
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(height: 10, width: 18),
              Text(
                "Already a member?",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontSize: 17,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Lato',
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
