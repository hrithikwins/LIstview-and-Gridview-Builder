import 'package:flutter/material.dart';
import 'package:newapp/list.dart';

void main() => runApp(MaterialApp(
      title: 'MyApp',
      // implementing named routes in our material app
      // home: MyApp(), The home parameter is now no longer needed and now initialroute parameter is used instead
      initialRoute: '/home', // the /home is defined in `routes`
      // The Routes takes in a list shown below
      routes: {
        "/home": (context) => MyApp(),
        "/second": (context) => SecondPage(),
      },
      theme: ThemeData(primaryColor: Colors.amber),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
            // removed appbar and wrapped scaffold with safeArea
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ),
                      );
                    },
                    child: Text('one'),
                  );
                })),
      ),
    );
  }
}
