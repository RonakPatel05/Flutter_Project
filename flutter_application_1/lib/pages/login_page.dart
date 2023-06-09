import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover
            ),
            SizedBox(
              height: 20.0,

            ),


            Text(
              "welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            )

            SizedBox(
              height: 20.0,
            ),

           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal:32.0 ),
             child: Column(
              children: [
               TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),

               TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                  hintText: "Enter PassWord",
                  labelText: "PassWord",
                ),
              ),

              SizedBox(
              height: 20.0,
            ),


            ElevatedButton(
              child:Text("Login"),
              style: TextButton.styleFrom(),
              onPressed: (){
                print("hii Ronak");
              } ,
            )

             ],),
           )


          ],
        ));
  }
}
