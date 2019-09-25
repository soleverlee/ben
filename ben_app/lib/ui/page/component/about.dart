import 'package:ben_app/util/links.dart';
import 'package:path/path.dart';

import '../../../generated/i18n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(S.of(context).about_description_1),
          Image(
            image: AssetImage('assets/undraw_mobile_login_ikmv.png'),
          ),
          Text(S.of(context).about_description_2),
          Image(
            image: AssetImage('assets/undraw_hacker_mind_6y85.png'),
          ),
          Text(S.of(context).about_description_3),
          FlatButton(
            child: Text(S.of(context).know_more_security_details),
            onPressed: () => Links.launchURL("http://riguz.com"),
          )
        ],
      ),
    );
  }
}
