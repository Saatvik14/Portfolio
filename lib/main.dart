import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Center(
                        child: Text(
                          "BRL Trainee",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/profile.png'),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          "Saatvik Rawat",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Icon(
                              Icons.school,
                              color: Colors.grey,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pursuing B.Tech(2nd year) in CS",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Icon(
                            Icons.place,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Muzaffarnagar(U.P.),India",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Icon(
                            Icons.email,
                            color: Colors.yellow,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "saatvikrawat8921@gmail.com",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                        child: Text(
                      "About Me",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    )),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "I am pursuing B.Tech with CS as my branch from Ajay Kumar garg Engineering college.I have done programming in core language like C++.Now,I am learning App development using Flutter.I am innovative and has a great capability to work with a team.",
                        textAlign: TextAlign.center,
                        maxLines: 15,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Goals",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "To be a proficient programmer with excellent coding skills and a broad exposure to computer system.",
                        textAlign: TextAlign.center,
                        maxLines: 15,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: RaisedButton(
                        onPressed: _launchURL,
                        child: Text(
                          "My Resume",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}

_launchURL() async {
  const url =
      "https://drive.google.com/file/d/1YNKnAySQIYFVY0WLMW183K71rnDGq7Kn/view?usp=sharing";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
