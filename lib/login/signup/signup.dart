import 'package:first/home.dart';
import 'package:first/login/signup/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _securepassword = true;
  String _username = '';
  String _email = '';
  String _password = '';
  final name = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            SizedBox(height: 90),
            Image.asset(
              'assets/logo_final.png',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "Happening now!",
                style: TextStyle(
                  color: Colors.black,
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
                  color: Colors.black,
                  fontFamily: 'Lato',
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }

                  final usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,}$');

                  if (!usernameRegex.hasMatch(value)) {
                    return 'Username must contain at least 3 characters\nand only allow letters, numbers, and underscores';
                  }

                  return null;
                },
                onSaved: (value) {
                  _username = value ?? '';
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email ID',
                  hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email address';
                  }

                  // Use a regular expression to check if the email is in a valid format
                  final emailRegex = RegExp(
                    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
                  );

                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }

                  return null;
                },
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: TextFormField(
                obscureText: _securepassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                  suffixIcon: togglePassword(),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }

                  final passwordRegex =
                      RegExp(r'^[a-zA-Z0-9_!@#$%^&*+=\|;:]{7,}$');

                  if (!passwordRegex.hasMatch(value)) {
                    return 'Password must have atleast 8 characters';
                  }

                  return null;
                },
                onSaved: (value) {
                  _password = value ?? '';
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {}
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
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(height: 10, width: 18),
                Text(
                  "Already a member?",
                  style: TextStyle(
                    color: Colors.black,
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _securepassword = !_securepassword;
        });
      },
      icon:
          _securepassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      color: Color(0xFF5A5A5A),
    );
  }
}
