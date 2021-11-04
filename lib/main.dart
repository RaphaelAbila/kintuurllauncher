import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyKintuApp());
}

class MyKintuApp extends StatefulWidget {
  const MyKintuApp({Key? key}) : super(key: key);

  _mykintuappview createState() => _mykintuappview();
}

class _mykintuappview extends State<MyKintuApp> {
  @override
  void initState() {
    _urlStartup().then((value) {
      print('Async done');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _urlStartup() async {
     String url = "http://www.toweroflove.org/kintu/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }
}



