import 'package:api_app/post_user_model.dart';
import 'package:api_app/user_model.dart';
import 'package:flutter/material.dart';
import 'package:api_app/get_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text("API DEMO"),
    //     ),
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: <Widget>[
    //           Text((postResult != null)
    //               ? "Id        :" +
    //                   postResult.id +
    //                   "\n\n" +
    //                   "Nama :" +
    //                   postResult.name +
    //                   "\n\n" +
    //                   "Job     :" +
    //                   postResult.job
    //               : "Data Null"),
    //           // Text("tidak ada data"),
    //           RaisedButton(
    //             onPressed: () {
    //               PostResult.connectToAPI("Janet Weaver", "Mahasiswa")
    //                   .then((value) {
    //                 postResult = value;
    //                 setState(() {});
    //               });
    //               // User.connectToAPI('3').then((value) {
    //               //   user = value;
    //               //   setState(() {});
    //               // });
    //             },
    //             child: Text("POST"),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DEMO API"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (user != null)
                    ? "Id :" +
                        user.id +
                        "\n\n" +
                        "Nama :" +
                        user.name +
                        "\n\n" +
                        "E-mail : " +
                        user.email
                    : "TIDAK ADA DATA",
              ),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI("2").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
