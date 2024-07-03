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
                'Welcome Back!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  fontSize: 25.7,
                ),
              ),
              SizedBox(height: 30.0,),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.email_outlined)
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
                          prefixIcon: Icon(Icons.lock),
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
                        foregroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'or login with',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                    SizedBox(height: 20.0,),
                    ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.g_mobiledata),
                        label: Text('Sign in with Google'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                         ),
                        ),
                    SizedBox(height: 10.0,),
                    ElevatedButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.facebook),
                      label: Text('Sign in with Facebook'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue[300],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Don\'t have an account? ',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                        ),
                        SizedBox(height: 5.0),
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