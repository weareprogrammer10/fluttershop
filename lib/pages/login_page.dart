import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [Image.asset('assets/images/login.png',
        fit: BoxFit.fill        ),
        SizedBox(height: 30,),


        Text('Welcome',
        style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold,       ),
        ),

        SizedBox(height: 20,),

     Padding(
       padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32),
       child: Column(children: [
            TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username"

            ),
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password"

            ),
          ),
       ],),
     ),
            
        SizedBox(height: 20,),
        ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white),

          
         child: Text("Login"),
          onPressed: (){

          },
         )


        ], ),
    );
  }
}
