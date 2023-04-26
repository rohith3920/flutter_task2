import 'package:flutter/material.dart';
import 'package:flutter_task5/navbar.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Screen3 extends StatefulWidget {
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final _formKey = GlobalKey<FormState>();
  File? imageFile;

  // File? images;
  // Future getImage(bool isCamera) async {
  //   File image;
  //   if (isCamera) {
  //     image =
  //         (await ImagePicker().pickImage(source: ImageSource.camera)) as File;
  //   } else {
  //     image =
  //         (await ImagePicker().pickImage(source: ImageSource.gallery)) as File;
  //   }
  //   setState(() {
  //     images = image;
  //   });
  // }

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
            GestureDetector(
              child: Text(
                'English',
                style: TextStyle(color: Colors.deepPurple, fontSize: 12),
              ),
              onTap: () {},
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
                  Container(
                    transform: Matrix4.translationValues(0, -130, 0),
                    child: Column(
                      children: [
                        if (imageFile != null)
                          Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: FileImage(imageFile!),
                                  fit: BoxFit.cover),
                            ),
                          )
                        else
                          Container(
                            width: 100,
                            height: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(),
                          ),
                        IconButton(
                          onPressed: () {
                            // getImage(true);
                            getImage(source: ImageSource.camera);
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            size: 40,
                            color: Colors.deepPurple,
                          ),
                        ),
                        // images == null
                        //     ? Column()
                        //     : Image.file(
                        //         images!,
                        //         height: 100,
                        //         width: 100,
                        //       ),
                        SizedBox(
                          height: 5,
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text('Camera / QR Code'),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    child: Container(
                      transform: Matrix4.translationValues(0, -50, 0),
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'Billing Document Number',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,

                              // controller: _firstNames,
                              decoration: InputDecoration(
                                hintText: '123456789',
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.greenAccent),
                                ),
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'Billing Date',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              // controller: _firstNames,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                hintText: 'dd/mm/yyyy',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'ODN Number',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
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
                                hintText: '0123456789',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .deepPurple, // Change this to your desired color
                                  ),
                                ),
                                isDense: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'Country Code',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
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
                                hintText: '123456789',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                isDense: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                transform: Matrix4.translationValues(0, 0, 0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        minimumSize: Size(130, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // set circular radius
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
        source: source,
        maxWidth: 100,
        maxHeight: 100,
        imageQuality: 70 //0 - 100

        );

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
