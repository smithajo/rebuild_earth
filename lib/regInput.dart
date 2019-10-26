import 'package:flutter/material.dart';

class InputWidget1 extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget1(this.topRight, this.bottomRight);

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
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Username",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 18)),
            ),
          ),
        ),
      ),
    );
  }
}

class InputWidget2 extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget2(this.topRight, this.bottomRight);

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
                  bottomRight: Radius.circular(0),
                  topRight: Radius.circular(0))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
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

class InputWidget3 extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget3(this.topRight, this.bottomRight);

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
                  bottomRight: Radius.circular(0),
                  topRight: Radius.circular(0))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
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

class InputWidget4 extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget4(this.topRight, this.bottomRight);

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
                  bottomRight: Radius.circular(0),
                  topRight: Radius.circular(0))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Full Name",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 18)),
            ),
          ),
        ),
      ),
    );
  }
}

class InputWidget5 extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget5(this.topRight, this.bottomRight);

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
                  bottomRight: Radius.circular(0),
                  topRight: Radius.circular(0))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Phone No.",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 18)),
            ),
          ),
        ),
      ),
    );
  }
}
