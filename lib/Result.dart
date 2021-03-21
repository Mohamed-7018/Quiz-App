import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final c;
  final finalresult;

  Result(this.c, this.finalresult);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$finalresult",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              "Restart the App",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
            onPressed: c,
          )
        ],
      ),
    );
  }
}
