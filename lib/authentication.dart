import 'package:flutter/material.dart';
import 'package:flutter_application_1/authfunction.dart';
import 'package:flutter_application_1/cardview.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Cardgrid.dart';

class authenticationwidget extends StatefulWidget {
  const authenticationwidget({super.key});

  @override
  _authenticationwidgetState createState() => _authenticationwidgetState();
}

class _authenticationwidgetState extends State<authenticationwidget> {
  final _formkey = GlobalKey<FormState>();
  bool islogin = false;
  String username = '';
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Authentication")),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                islogin
                    ? TextFormField(
                        key: ValueKey("username"),
                        decoration: InputDecoration(
                          hintText: "Enter your username",
                        ),
                        validator: (value) {
                          if (value.toString().length < 6) {
                            return 'Username len is short';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            username = value!;
                          });
                        },
                      )
                    : Container(),

                TextFormField(
                  key: ValueKey("email"),
                  decoration: InputDecoration(hintText: ("Enter you email")),
                  validator: (value) {
                    if (!(value.toString().contains('@'))) {
                      return 'Invalid Emai!';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
                TextFormField(
                  key: ValueKey("Password"),
                  obscureText: true,
                  decoration: InputDecoration(hintText: ("Enter you password")),
                  validator: (value) {
                    if (value.toString().length < 6) {
                      return 'password is very weak';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        islogin
                            ? sigin(email, password)
                            : signup(email, password);
                        //send data to firebase
                      }
                    },
                    child: islogin ? Text("Sign up") : Text("Login"),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    setState(() {
                      islogin = !islogin;
                    });
                  },
                  child: islogin
                      ? Text("Don,t have any account?")
                      : Text("Already have an account? Login"),
                ),
                SizedBox(height: 5),

                // TextButton(
                //   onPressed: () {
                //     setState(() {});
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => cardwidget()),
                //     );
                //   },
                //   child: Text("Move to list view?"),
                // ),
                // SizedBox(height: 5),
                // TextButton(
                //   onPressed: () {
                //     setState(() {});
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => cardgridwidget()),
                //     );
                //   },
                //   child: Text("Move to Grid View?"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
