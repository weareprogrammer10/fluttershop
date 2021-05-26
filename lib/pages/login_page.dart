import 'package:flutter/material.dart';
import 'package:shop/pages/utils/routes.dart';
// import 'package:shop/pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();
   
  moveToHome(BuildContext context) async {

    if (_formkey.currentState.validate()) {
      
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        //Fixed button overflow problem
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
                // height: 900,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Username Cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password Cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6 ";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Material(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(changeButton ? 20 : 5),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: changeButton ? 50 : 60,
                    // color: Colors.pinkAccent,
                    alignment: Alignment.center,

                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                    // shape: changeButton ? BoxShape.circle:BoxShape.rectangle,
                  ),
                ),
              ),

              // ElevatedButton(
              //   style: TextButton.styleFrom(minimumSize: Size(300, 50)),
              //   child: Text("Login"),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
