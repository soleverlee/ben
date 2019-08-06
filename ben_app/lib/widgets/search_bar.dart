import '../theme/icons.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10.0, 30, 10),
        child: TextField(
          style: TextStyle(color: Colors.white, fontSize: 20.0),
          decoration: InputDecoration(
            prefixIcon: Icon(
              AliIcon.search,
              color: Colors.white,
              size: 22.0,
            ),
            filled: true,
            fillColor: Colors.white30,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white30),
              borderRadius: BorderRadius.circular(40.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white30),
              borderRadius: BorderRadius.circular(40.0),
            ),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          ),
        ));
  }
}
