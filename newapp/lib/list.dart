import 'package:flutter/material.dart';

void main() => runApp(MaterialApp());

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('one'),
            );
          },
        ),
      ),
    );
  }
}
