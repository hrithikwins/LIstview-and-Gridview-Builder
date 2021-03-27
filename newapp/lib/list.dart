import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 200,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('one'),
              onTap: () => Navigator.pushNamed(context, '/'),
            );
          },
        ),
      ),
    );
  }
}
