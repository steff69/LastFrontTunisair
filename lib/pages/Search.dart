import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Container(
          width: 400,
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              hintText: 'Search...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: Center(
              child: Image.asset(
            'assets/illustration.png',
            fit: BoxFit.cover,
          )),
        ),
      ],
    )));
  }
}
