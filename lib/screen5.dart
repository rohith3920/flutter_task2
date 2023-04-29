import 'package:flutter/material.dart';
import 'package:flutter_task5/navbar.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
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
              style: TextStyle(color: Colors.deepPurple, fontSize: 15),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.translate,
              color: Colors.deepPurple,
            ),
            TextButton(
              onPressed: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(25.0, 25.0, 0.0, 0.0),
                  items: <PopupMenuEntry>[
                    PopupMenuItem(
                      child: Text('English'),
                    ),
                    PopupMenuItem(
                      child: Text('Telugu'),
                    ),
                    PopupMenuItem(
                      child: Text('Bahasa'),
                    ),
                  ],
                );
              },
              child: Text(
                'English',
                style: TextStyle(color: Colors.deepPurple, fontSize: 12),
              ),
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
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.deepPurple,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Icon(
                            Icons.picture_as_pdf,
                            color: Colors.red,
                            size: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Billing.info.Azure.data.1',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Row(
                            children: [
                              Icon(Icons.upload_file_outlined),
                              Text('Download File',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.deepPurple,
                      height: 50,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Billing Document Number',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                  Text(
                                    'ODN Number',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('0124545789'),
                                  Text('0124545789'),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Billing Date',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                  Text(
                                    'Country Code',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('07/02/2023'),
                                  Text('12345678'),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Created By',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                  Text(
                                    'Created At',
                                    style: TextStyle(color: Colors.deepPurple),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Veeru'),
                                  Text('Hyderabad'),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            'Azure Link',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            'azurelink1245789791afdaf',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    )
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
