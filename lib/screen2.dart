import 'package:flutter/material.dart';
import 'package:flutter_task5/navbar.dart';
import './screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Navbar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.deepPurple,
              ));
        }),
        title: Row(
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
            ),
            Text(
              'ACKNOWLEDGEMENTS',
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.translate,
              color: Colors.deepPurple,
            ),
            Text(
              'English',
              style: TextStyle(color: Colors.deepPurple, fontSize: 12),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        transform: Matrix4.translationValues(-200, 0, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/Path 20838.png'),
                              width: 280,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(-20, -90, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/Polygon 1.png'),
                              width: 260,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(20, 810, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/Ellipse 9.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(-30, 700, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('assets/Ellipse 9.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(500, 870, 0),
                        child: Container(
                          transform: Matrix4.rotationZ(-3.15),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/Path 20838.png'),
                                width: 280,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                transform: Matrix4.translationValues(0, -100, 0),
                width: 200,
                height: 200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen3(),
                      ),
                    );
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home,
                              size: 100,
                              color: Colors.deepPurple,
                            ),
                            Text(
                              'store',
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                transform: Matrix4.translationValues(0, -100, 0),
                width: 200,
                height: 200,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen3(),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 10,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.topic_outlined,
                            size: 100,
                            color: Colors.deepPurpleAccent.shade700,
                          ),
                          Text(
                            'Retrieve',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
