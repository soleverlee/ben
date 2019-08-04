import 'package:flutter/material.dart';

class NotImplementedPage extends StatelessWidget {
  final String title;

  NotImplementedPage({this.title = "Placeholder"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: new Text(title)),
        body: Center(child: const Text('The page is not implemented yet!')));
  }
}
