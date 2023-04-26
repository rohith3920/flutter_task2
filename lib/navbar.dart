import 'package:flutter/material.dart';
import 'package:flutter_task5/screen1.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          margin: EdgeInsets.only(top: 60, left: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_circle_sharp,
                    size: 80,
                    color: Colors.deepPurple,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'user name',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.deepPurple,
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.receipt,
                  color: Colors.deepPurple,
                ),
                title: Text(
                  'Create Receipt',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.inventory_outlined,
                  color: Colors.deepPurple,
                ),
                title: Text(
                  'Invoice Acknowledgement from Customer',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_sharp,
                  color: Colors.deepPurple,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen1(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.deepPurple,
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              Stack(children: [
                Container(
                  transform: Matrix4.translationValues(-40, -450, 0),
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
                  transform: Matrix4.translationValues(100, 350, 0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/Ellipse 9.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(180, 280, 0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/Ellipse 9.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(300, 500, 0),
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
              ])
            ],
          ),
        ),
      ),
    );
  }
}
