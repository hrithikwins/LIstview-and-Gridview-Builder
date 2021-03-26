import 'package:flutter/material.dart';
import 'package:newapp/list.dart';

 
void main() => runApp(MaterialApp(
  title:'MyApp',
  home: MyApp(),
  theme: ThemeData(primaryColor: Colors.amber),
));
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Material App Bar'),
        ),
        body: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)
        , itemBuilder: (BuildContext context,int index){
          return ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
          },child: Text('one'),
          
          );
        })
      ),
    );
  }
}