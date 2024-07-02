import 'package:flutter/material.dart';

class Login  extends StatefulWidget {
  const Login ({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  fontSize: 30.7,
                ),
              ),
              SizedBox(height: 30.0,),
              Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      maxLength: 60,
                      decoration: InputDecoration(
                        label: Text('Username'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide a name!';
                        }
                        if (value.length < 2) {
                          return ' ame should be atleast 8-20 letters long';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        username = value!;
                      },
                    ),
                    SizedBox(height: 30.0,),
                    TextFormField(
                      obscureText: true,
                      maxLength: 60,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please provide a password!';
                        }
                        if(value.length < 8){
                          return 'Password should be atleast 8 letters long';
                        }
                        if(value.length >20) {
                          return 'Password should be atleast 20 letters long';
                        }
                        return null;
                      },
                      onSaved: (value){
                        password = value!;
                      },
                    ),
                    SizedBox(height: 25.0,),
                    ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          print(username);
                          print(password);
                        }
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[200],
                        foregroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          print(username);
                          print(password);
                        }
                      },
                      child: Text('Login to Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          print(username);
                          print(password);
                        }
                      },
                      child: Text('Login to Facebook'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white60,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Dont have an account?',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 30.0),
                        InkWell(
                           child: Text(
                             'Sign Up Here',
                             style: TextStyle(
                               color: Colors.blue
                             ),
                           ),
                          onTap: () => Navigator.popAndPushNamed(context, '/signup'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}