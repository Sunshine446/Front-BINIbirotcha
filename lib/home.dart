import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.pink[200],
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/gege.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/sunshine.png'),
                        backgroundColor: Colors.pink[100],
                        radius: 50.0,
                      ),
                    ),
                  ),
                  Divider(
                    height: 55.0,
                    color: Colors.grey,
                    thickness: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_2,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'NAME',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Sunshine P. Navarro',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_sharp,
                        color: Colors.black26,
                      ),
                      Text(
                        'YEAR',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '$year Year',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'ADDRESS',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Calaca City',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'STATUS',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Single',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: Colors.black26,
                      ),
                      Text(
                        'EMAIL',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Sunshinenavarro5@gmail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.black26,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'CONTACT NUMBER',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '09051738739',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),

                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        year += 1;
                      });
                    },
                    child: Text('Add Year'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}