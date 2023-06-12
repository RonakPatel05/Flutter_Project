import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Imageurl = """
https://th.bing.com/th/id/OIP.BmgB73ISJV2r0zxSPwFYnQHaEK?pid=ImgDet&rs=1""";
    return Drawer(
      child: Container(
        // color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("ronak patel"),
                accountEmail: Text("patel@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(Imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Color.fromARGB(255, 239, 36, 21),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Color.fromARGB(255, 239, 36, 21),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Color.fromARGB(255, 239, 36, 21),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
