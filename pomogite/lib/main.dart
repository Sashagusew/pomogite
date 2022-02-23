import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
 
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    
    return Container(
      padding: EdgeInsets.all(30.0),
      width: size.width,
          child: Scaffold(
            body: Column(
            children:[
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
              children: [
              CircleAvatar(
              backgroundImage: NetworkImage("https://st2.depositphotos.com/1064024/10769/i/600/depositphotos_107694484-stock-photo-little-boy.jpg"),
              radius: 30.0,) 
              ]
              ),
              Container(
                width: 300,
                child: TextField(),
              ),
              Container(
                width: 300,
                child: TextField(),
              ),
              Container(
              child:IconButton(onPressed: (){} , icon: const Icon(Icons.hdr_off_rounded) ),
              ),
              
           ],
         ),
      ),
    );
  }
}

