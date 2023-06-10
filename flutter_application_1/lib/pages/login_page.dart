// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routs.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "welcome $name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      }),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter PassWord",
                        labelText: "PassWord",
                      ),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell(
                      hoverColor: changebutton
                          ? Color.fromARGB(255, 0, 42, 255)
                          : Color.fromARGB(0, 0, 0, 0),
                      onTap: () async {
                        // hourFormat(of: Color.fromARGB(199, 106, 34, 5),)

                        setState(() {
                          changebutton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, myroutes.homeroute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          shape: changebutton
                              ? BoxShape.rectangle
                              : BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 40.0,
                    // ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, myroutes.homeroute);
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
