import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        foregroundColor: Colors.black,
        title: Text(
          'DASHBOARD',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterCarousel(
              options: CarouselOptions(
                height: 400.0,
                showIndicator: true,
                slideIndicator: CircularSlideIndicator(),
              ),
              items: [
                'assets/biniv.png',
                'assets/binib.png',
                'assets/biniwand.png',
                'assets/binitote.png',
                'assets/binicap.png',
              ].map((String imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink[200],
        elevation: 3.0,
        onTap: (int val){
          switch(val){
            case 0:
              Navigator.pushNamed(context, '/profile');
              break;
            case 1:
              Navigator.pushNamed(context, '/menu');
              break;
          }
        },
        currentIndex: 0,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu'
          ),
        ],
      ),
    );
  }
}
