import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      'https://image.shutterstock.com/image-photo/programming-man-working-on-computer-600w-1032639931.jpg';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.teal,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  // decoration: BoxDecoration(
                  //   color: Colors.teal[200],
                  // ),
                  accountName: Text("Aavash Paudel"
                  ,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),)  ,
                  accountEmail: Text("awashpaudel10@gmail.com",
                  textScaleFactor: 1.3,
                  ),
                  currentAccountPicture:CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    // backgroundImage: NetworkImage(imageUrl),
                  ), 
                  // Image.asset('assets/images/login.png'),
                  margin: EdgeInsets.zero,
                )
                ),

                  ListTile(
                  dense: true,
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                    ),
                    title: Text('Home',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),),

                  ),

                  ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                    ),
                    title: Text('Profile',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),),

                  ),
                  ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                    ),
                    title: Text('Email me',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),),

                  ),

          ],
        ),
      ),
    );
  }
}
