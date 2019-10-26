import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response = await http.get(
    'https://api.rebuildearth.org/api/token',
    headers: {HttpHeaders.authorizationHeader: "access"},
  );
  final responseJson = json.decode(response.body);

  return Post.fromJson(responseJson);
}

class Post {
  final String username;
  final String password;


  Post({this.username, this.password});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      username: json['username'],
      password: json['password'],
    );
  }
}


class InputWidget extends StatelessWidget {
  final double topRight;
  final double bottomRight;
  String value;
  TextEditingController emailController = new TextEditingController();

  InputWidget(this.topRight, this.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Material(
          elevation: 10,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(0),
                  topRight: Radius.circular(topRight))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
             // onChanged: (),
             controller: emailController,
              autofocus: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 18)),
            ),
          ),
        ),
      ),
    );
  }
}



class InputWidgets extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidgets(this.topRight, this.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 40 ,
        child: Material(
          elevation: 10,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(topRight),
                  topRight: Radius.circular(0))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 18)),
            ),
          ),
        ),
      ),
    );
  }
}
