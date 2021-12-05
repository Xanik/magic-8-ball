import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: const Magic(),
    ),
  ));
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  var imageValue = 1;
  changeImage() {
    setState(() {
      imageValue = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/ball$imageValue.png'),
              )),
        ],
      ),
    );
  }
}

