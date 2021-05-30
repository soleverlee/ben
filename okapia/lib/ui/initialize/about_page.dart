import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:okapia/generated/l10n.dart';

class AboutPage extends StatelessWidget {
  final VoidCallback onNext;

  const AboutPage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image(
            image:
                AssetImage('assets/images/undraw_mobile_encryption_cl5q.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Html(data: S.of(context).introduction_about),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: this.onNext,
                  child: Text(S.of(context).button_next),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
