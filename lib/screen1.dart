import 'package:flutter/material.dart';
import 'package:flutter_task5/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _formKey = GlobalKey<FormState>();
  late String userNames, password;
  final userName = TextEditingController();
  final pass = TextEditingController();

  List<Map<String, String>> users = [
    {
      "username": "mounika.p@codetru.com",
      "password": "Dev@123",
      "fullname": "Mounika",
      "accesstoken": "agbjgjtjj1999"
    },
    {
      "username": "saiteja@codetru.com",
      "password": "Admin@123",
      "fullname": "Sai Teja Puppala",
      "accesstoken": "agbjgjtjj1997"
    },
    {
      "username": "hemanth@codetru.com",
      "password": "Admins@123",
      "fullname": "Hemanth Macha",
      "accesstoken": "agbjgjtjj1998"
    },
    {
      "username": "rohith@codetru.com",
      "password": "Rohith@123",
      "fullname": "Rohith Rajabhanu",
      "accesstoken": "agbjgjtjj199"
    },
    {
      "username": "vinay@codetru.com",
      "password": "123@Vinay",
      "fullname": "vinay Perala",
      "accesstoken": "agbjgjtjj1996"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(children: [
                  Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Row(
                            children: [
                              Image(
                                image: AssetImage('assets/Path 20838.png'),
                                width: 150,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                image:
                                    AssetImage('assets/asian-paints-logo.png'),
                                width: 150,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                transform: Matrix4.translationValues(0, 40, 0),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/language-svgrepo-com.png'),
                                      width: 100,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                transform: Matrix4.translationValues(0, 45, 0),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/Polygon 1.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        transform: Matrix4.translationValues(200, 360, 0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/Ellipse 9.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(-200, 220, 0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/Ellipse 10.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0, -60, 0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/Paint Shop Image Group.png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'User Login',
                          style: TextStyle(
                              color: Color.fromARGB(255, 72, 41, 129),
                              fontSize: 30,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 70)),
                            Text(
                              'User Name',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 72, 41, 129),
                                  fontSize: 18),
                            ),
                            Text(
                              '*',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: SizedBox(
                            width: 280,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: userName,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your User Name';
                                }
                                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid user Name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                userNames = value!;
                              },
                              decoration: InputDecoration(
                                hintText: 'User Name',
                                filled: true,
                                fillColor: Colors.grey[200],
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                isDense: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 72, 41, 129),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 70)),
                            Text(
                              'Password',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 72, 41, 129),
                                  fontSize: 18),
                            ),
                            Text(
                              '*',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: SizedBox(
                            width: 280,
                            child: TextFormField(
                              obscureText: true,
                              controller: pass,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null; // Return null if the validation passes
                              },
                              onSaved: (value) {
                                password = value!;
                              },
                              decoration: InputDecoration(
                                hintText: '.............',
                                filled: true,
                                fillColor: Colors.grey[200],
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                isDense: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 72, 41, 129),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 72, 41, 129),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  for (int i = 0; i < users.length; i++) {
                                    if (users[i]['username'] == userName.text &&
                                        users[i]['password'] == pass.text) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Screen2()));
                                    }
                                  }
                                }
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 10,
                                shadowColor: Colors.deepPurpleAccent.shade700,
                                primary: Color.fromARGB(255, 72, 41, 129),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
