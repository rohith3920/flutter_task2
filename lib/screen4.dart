import 'package:flutter/material.dart';
import 'package:flutter_task5/navbar.dart';
import 'package:flutter_task5/screen5.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Screen4 extends StatefulWidget {
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Billing Document Number';
  bool showSearchField = false;
  bool showSearchFields = false;
  bool showCard = false;
  final num = TextEditingController();
  bool showCards = false;
  final date1 = TextEditingController();
  final date2 = TextEditingController();

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
              padding: EdgeInsets.all(0),
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
              style: TextStyle(color: Colors.deepPurple, fontSize: 17),
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
                style: TextStyle(color: Colors.deepPurple),
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
                  Form(
                      child: Container(
                    transform: Matrix4.translationValues(0, -100, 0),
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 50)),
                            Text(
                              'Search By',
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 350,
                          padding: EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              DropdownButtonFormField<String>(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple),
                                  ),
                                  isDense: true,
                                ),
                                value: dropdownValue,
                                items: <String>[
                                  'Billing Document Number',
                                  'Document Name',
                                  'Document Date',
                                  'Document Credited',
                                  'ODN Number'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          TextStyle(color: Colors.deepPurple),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (dropdownValue) {
                                  setState(() {
                                    dropdownValue = dropdownValue;
                                    if (dropdownValue == 'Document Name') {
                                      showSearchField = true;
                                      showSearchFields = false;
                                    } else if (dropdownValue ==
                                        'Document Date') {
                                      showSearchFields = true;
                                      showSearchField = false;
                                    }
                                  });
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Visibility(
                                visible: showSearchField,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 320,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Enter Billing Document Number',
                                                style: TextStyle(
                                                  color: Colors.deepPurple,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          TextFormField(
                                            controller: num,
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.deepPurple),
                                              ),
                                              isDense: true,
                                              hintText: '0123456789',
                                              hintStyle: TextStyle(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                              ),
                                              suffixIcon: IconButton(
                                                icon: Icon(
                                                  Icons.search,
                                                  size: 30,
                                                  color: Colors.deepPurple,
                                                ),
                                                onPressed: () {
                                                  setState(
                                                    () {
                                                      if (num.text != "") {
                                                        showCard = true;
                                                        showCards = false;
                                                      }
                                                    },
                                                  );
                                                },
                                              ),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: showSearchFields,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 150,
                                            child: Column(
                                              children: [
                                                Text('Document Date form',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.deepPurple)),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                TextFormField(
                                                  controller: date1,
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .deepPurple),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .deepPurple),
                                                    ),
                                                    isDense: true,
                                                    hintText: 'mm/dd/yyyy',
                                                    hintStyle: TextStyle(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 150,
                                            child: Column(
                                              children: [
                                                Text('Document Date to',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.deepPurple)),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                TextFormField(
                                                  controller: date2,
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .deepPurple),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .deepPurple),
                                                    ),
                                                    isDense: true,
                                                    hintText: 'mm/dd/yyyy',
                                                    hintStyle: TextStyle(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    suffixIcon: IconButton(
                                                      icon: Icon(
                                                        Icons.search,
                                                        size: 20,
                                                        color: Colors.white,
                                                      ),
                                                      onPressed: () {
                                                        setState(() {
                                                          if (date1.text
                                                                  .isNotEmpty &&
                                                              date2.text
                                                                      .isNotEmpty !=
                                                                  "") {
                                                            showCards = true;
                                                            showCard = false;
                                                          }
                                                        });
                                                      },
                                                    ),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Visibility(
                                visible: showCard,
                                child: Container(
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.deepPurple,
                                          ],
                                          stops: [0.8, 0.5],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Billing Document Number',
                                                  style: TextStyle(
                                                      color: Colors.deepPurple),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 5),
                                                child: Row(
                                                  children: [
                                                    Text('12e32442'),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 180),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons.visibility,
                                                          size: 20,
                                                          color: Colors.white,
                                                        ),
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Screen5()),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Billing Date',
                                                  style: TextStyle(
                                                      color: Colors.deepPurple),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Text('12e32442'),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: showCards,
                                child: Container(
                                  child: Card(
                                    elevation: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.deepPurple,
                                          ],
                                          stops: [0.8, 0.5],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Billing Document Number',
                                                  style: TextStyle(
                                                      color: Colors.deepPurple),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 5),
                                                child: Row(
                                                  children: [
                                                    Text('12e32442'),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 180),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons.visibility,
                                                          size: 20,
                                                          color: Colors.white,
                                                        ),
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Screen5()),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Billing Date',
                                                  style: TextStyle(
                                                      color: Colors.deepPurple),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Text('12e32442'),
                                                  ],
                                                ),
                                              ),
                                            ],
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
                      ],
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
