import 'package:first/home.dart';
import 'package:first/login/signup/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _SecurePassword = true;
  String _Username = '';
  String _Password = '';
  final GlobalKey<FormState> _Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040404),
      body: Form(
        key: _Formkey,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
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
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Username';
                  } else {}
                  return null;
                },
                onSaved: (value) {
                  _Username = value ?? '';
                },
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
              child: TextFormField(
                obscureText: _SecurePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xFF5A5A5A)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                  suffixIcon: TogglePassword(),
                ),
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Password';
                  } else {}
                  return null;
                },
                onSaved: (value) {
                  _Password = value ?? '';
                },
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(height: 10, width: 18),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    if (_Formkey.currentState!.validate()) {
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget TogglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _SecurePassword = !_SecurePassword;
        });
      },
      icon:
          _SecurePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      color: Color(0xFF5A5A5A),
    );
  }
}
