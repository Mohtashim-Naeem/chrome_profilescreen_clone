import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHovered = false;
  bool _isHovered2 = false;

  TextEditingController _controller = TextEditingController(
    text: 'Mohtashim',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 38, 41),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bgpic.png'),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high),
        ),
        child: Column(children: [
          SizedBox(height: 60),
          Align(
            alignment: Alignment.center,
            child: Image.network(
                width: 30,
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Google_Chrome_icon_%28February_2022%29.svg/640px-Google_Chrome_icon_%28February_2022%29.svg.png'),
          ),
          SizedBox(height: 25),
          Text(
            "Who's using Chrome?",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            "With Chrome profiles you can separate all your Chrome stuff. Create\nprofiles for friends and family, or split between work and fun.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 109, 110, 116),
                fontSize: 15,
                fontWeight: FontWeight.w100),
          ),
          SizedBox(height: 65),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize,
            children: [
              InkWell(
                onTap: () {},
                // focusColor: Color.fromARGB(54, 140, 140, 146),
                onHover: (val) {
                  setState(() {
                    _isHovered = val;
                  });
                },
                hoverColor: _isHovered
                    ? Color.fromARGB(255, 60, 64, 67)
                    : Color.fromARGB(255, 41, 42, 46),
                borderRadius: BorderRadius.circular(8), //for hover color radius
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(8), //for container's radius
                      border: Border.all(
                        color: Color.fromARGB(255, 87, 88, 92),
                      )),
                  height: 200,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  splashRadius: 10,
                                  hoverColor: Color.fromARGB(54, 140, 140, 146),
                                  // focusColor: Color.fromARGB(255, 250, 250, 250),
                                  // ============================= Dialog Start

                                  onPressed: () {
                                    // showDialog(
                                    //     context: context,
                                    //     builder: (BuildContext context) {
                                    //       return SizedBox(
                                    //         width: 10,
                                    //         height: 10,
                                    //         child: Card(
                                    //           child: Container(
                                    //             // width: 10,
                                    //             // height: 10,
                                    //             // title: Text('More actions'),
                                    //             // semanticLabel: 'More actions',
                                    //             color: Color.fromARGB(
                                    //                 255, 37, 38, 41),
                                    //             child: Column(
                                    //                 mainAxisSize:
                                    //                     MainAxisSize.min,
                                    //                 children: [
                                    //                   ListTile(
                                    //                     title: Text('Edit'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.edit),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                   ListTile(
                                    //                     title: Text('Delete'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.delete),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                 ]),
                                    //           ),
                                    //         ),
                                    //       );
                                    //     });
                                  },
                                  // ====================== Dialog end

                                  icon: Icon(
                                    size: 15,
                                    color: Color.fromARGB(255, 140, 140, 146),
                                    Icons.more_vert,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: MouseRegion(
                                // onHover: (value) {
                                //   _isHovered2 = value;
                                // },
                                onEnter: (event) {
                                  setState(() {
                                    _isHovered2 = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    _isHovered2 = false;
                                  });
                                },
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  controller: _controller,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    enabledBorder: _isHovered2
                                        ? UnderlineInputBorder(
                                            borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 140, 140, 146),
                                          ))
                                        : InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightBlueAccent)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 12,
                          ),
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/zuni.jpeg')),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Mohtashim Naeem',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                // focusColor: Color.fromARGB(54, 140, 140, 146),
                onHover: (val) {
                  setState(() {
                    _isHovered = val;
                  });
                },
                hoverColor: _isHovered
                    ? Color.fromARGB(255, 60, 64, 67)
                    : Color.fromARGB(255, 41, 42, 46),
                borderRadius: BorderRadius.circular(8), //for hover color radius
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(8), //for container's radius
                      border: Border.all(
                        color: Color.fromARGB(255, 87, 88, 92),
                      )),
                  height: 200,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  splashRadius: 10,
                                  hoverColor: Color.fromARGB(54, 140, 140, 146),
                                  // focusColor: Color.fromARGB(255, 250, 250, 250),
                                  // ============================= Dialog Start

                                  onPressed: () {
                                    // showDialog(
                                    //     context: context,
                                    //     builder: (BuildContext context) {
                                    //       return SizedBox(
                                    //         width: 10,
                                    //         height: 10,
                                    //         child: Card(
                                    //           child: Container(
                                    //             // width: 10,
                                    //             // height: 10,
                                    //             // title: Text('More actions'),
                                    //             // semanticLabel: 'More actions',
                                    //             color: Color.fromARGB(
                                    //                 255, 37, 38, 41),
                                    //             child: Column(
                                    //                 mainAxisSize:
                                    //                     MainAxisSize.min,
                                    //                 children: [
                                    //                   ListTile(
                                    //                     title: Text('Edit'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.edit),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                   ListTile(
                                    //                     title: Text('Delete'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.delete),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                 ]),
                                    //           ),
                                    //         ),
                                    //       );
                                    //     });
                                  },
                                  // ====================== Dialog end

                                  icon: Icon(
                                    size: 15,
                                    color: Color.fromARGB(255, 140, 140, 146),
                                    Icons.more_vert,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: MouseRegion(
                                // onHover: (value) {
                                //   _isHovered2 = value;
                                // },
                                onEnter: (event) {
                                  setState(() {
                                    _isHovered2 = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    _isHovered2 = false;
                                  });
                                },
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  controller: _controller,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    enabledBorder: _isHovered2
                                        ? UnderlineInputBorder(
                                            borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 140, 140, 146),
                                          ))
                                        : InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightBlueAccent)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 12,
                          ),
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/my.jpeg')),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Mohtashim Naeem',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                // focusColor: Color.fromARGB(54, 140, 140, 146),
                onHover: (val) {
                  setState(() {
                    _isHovered = val;
                  });
                },
                hoverColor: _isHovered
                    ? Color.fromARGB(255, 60, 64, 67)
                    : Color.fromARGB(255, 41, 42, 46),
                borderRadius: BorderRadius.circular(8), //for hover color radius
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(8), //for container's radius
                      border: Border.all(
                        color: Color.fromARGB(255, 87, 88, 92),
                      )),
                  height: 200,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  splashRadius: 10,
                                  hoverColor: Color.fromARGB(54, 140, 140, 146),
                                  // focusColor: Color.fromARGB(255, 250, 250, 250),
                                  // ============================= Dialog Start

                                  onPressed: () {
                                    // showDialog(
                                    //     context: context,
                                    //     builder: (BuildContext context) {
                                    //       return SizedBox(
                                    //         width: 10,
                                    //         height: 10,
                                    //         child: Card(
                                    //           child: Container(
                                    //             // width: 10,
                                    //             // height: 10,
                                    //             // title: Text('More actions'),
                                    //             // semanticLabel: 'More actions',
                                    //             color: Color.fromARGB(
                                    //                 255, 37, 38, 41),
                                    //             child: Column(
                                    //                 mainAxisSize:
                                    //                     MainAxisSize.min,
                                    //                 children: [
                                    //                   ListTile(
                                    //                     title: Text('Edit'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.edit),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                   ListTile(
                                    //                     title: Text('Delete'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.delete),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                 ]),
                                    //           ),
                                    //         ),
                                    //       );
                                    //     });
                                  },
                                  // ====================== Dialog end

                                  icon: Icon(
                                    size: 15,
                                    color: Color.fromARGB(255, 140, 140, 146),
                                    Icons.more_vert,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: MouseRegion(
                                // onHover: (value) {
                                //   _isHovered2 = value;
                                // },
                                onEnter: (event) {
                                  setState(() {
                                    _isHovered2 = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    _isHovered2 = false;
                                  });
                                },
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  controller: _controller,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    enabledBorder: _isHovered2
                                        ? UnderlineInputBorder(
                                            borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 140, 140, 146),
                                          ))
                                        : InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightBlueAccent)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 12,
                          ),
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/bhai.jpg')),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Mohtashim Naeem',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                // focusColor: Color.fromARGB(54, 140, 140, 146),
                onHover: (val) {
                  setState(() {
                    _isHovered = val;
                  });
                },
                hoverColor: _isHovered
                    ? Color.fromARGB(255, 60, 64, 67)
                    : Color.fromARGB(255, 41, 42, 46),
                borderRadius: BorderRadius.circular(8), //for hover color radius
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(8), //for container's radius
                      border: Border.all(
                        color: Color.fromARGB(255, 87, 88, 92),
                      )),
                  height: 200,
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  splashRadius: 10,
                                  hoverColor: Color.fromARGB(54, 140, 140, 146),
                                  // focusColor: Color.fromARGB(255, 250, 250, 250),
                                  // ============================= Dialog Start

                                  onPressed: () {
                                    // showDialog(
                                    //     context: context,
                                    //     builder: (BuildContext context) {
                                    //       return SizedBox(
                                    //         width: 10,
                                    //         height: 10,
                                    //         child: Card(
                                    //           child: Container(
                                    //             // width: 10,
                                    //             // height: 10,
                                    //             // title: Text('More actions'),
                                    //             // semanticLabel: 'More actions',
                                    //             color: Color.fromARGB(
                                    //                 255, 37, 38, 41),
                                    //             child: Column(
                                    //                 mainAxisSize:
                                    //                     MainAxisSize.min,
                                    //                 children: [
                                    //                   ListTile(
                                    //                     title: Text('Edit'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.edit),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                   ListTile(
                                    //                     title: Text('Delete'),
                                    //                     textColor: Colors
                                    //                         .grey.shade400,
                                    //                     leading:
                                    //                         Icon(Icons.delete),
                                    //                     iconColor: Colors
                                    //                         .grey.shade700,
                                    //                     onTap: () {
                                    //                       // Handle edit profile action
                                    //                       Navigator.of(context)
                                    //                           .pop();
                                    //                     },
                                    //                   ),
                                    //                 ]),
                                    //           ),
                                    //         ),
                                    //       );
                                    //     });
                                  },
                                  // ====================== Dialog end

                                  icon: Icon(
                                    size: 15,
                                    color: Color.fromARGB(255, 140, 140, 146),
                                    Icons.more_vert,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: MouseRegion(
                                // onHover: (value) {
                                //   _isHovered2 = value;
                                // },
                                onEnter: (event) {
                                  setState(() {
                                    _isHovered2 = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    _isHovered2 = false;
                                  });
                                },
                                child: TextField(
                                  style: TextStyle(color: Colors.white),
                                  controller: _controller,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 20),
                                    enabledBorder: _isHovered2
                                        ? UnderlineInputBorder(
                                            borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 140, 140, 146),
                                          ))
                                        : InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.lightBlueAccent)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 12,
                          ),
                          CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('images/profile.jpg')),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Mohtashim Naeem',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ]),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
    //  Stack(
    //   children: [
    //     Image.asset(
    //       fit: BoxFit.cover,
    //       'images/background.png',
    //     ),
    // Column(children: [
    //   Align(
    //     alignment: Alignment.center,
    //     child: Image.network(
    //         width: 25,
    //         'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Google_Chrome_icon_%28February_2022%29.svg/640px-Google_Chrome_icon_%28February_2022%29.svg.png'),
    //   ),
    // ]),
    //   ],
    // ),
    // );
  }
}
