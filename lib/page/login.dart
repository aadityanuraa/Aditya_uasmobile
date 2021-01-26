import 'package:flutter/material.dart';
import 'package:sephorature_app/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameControl = TextEditingController();
  TextEditingController passControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaPrimer,
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Text(
                "WELCOME",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "To SEPHORATURE, Let's Shop ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFF00),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              buildTextField(nameControl, Icons.account_circle, "USERNAME"),
              SizedBox(height: 30),
              buildTextField(passControl, Icons.lock, "PASSWORD"),
              SizedBox(height: 30),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: Color(0xFFFFFF00),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: warnaPrimer,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 50),
                    SvgPicture.asset("assets/icons/google-icon.svg"),
                    SizedBox(width: 10),
                    Text(
                      'SIGN IN WITH GOOGLE',
                      style: TextStyle(
                        color: warnaPrimer,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Don't Have An Account Sephorature ?  ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFF00),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Daftar Sekarang",
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: warnaSekunder,
        border: Border.all(color: Colors.lightBlueAccent),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          labelText: labelText,
          hintText: labelText,
          labelStyle: TextStyle(color: Colors.white),
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
        
      ),
    );
  }
}
