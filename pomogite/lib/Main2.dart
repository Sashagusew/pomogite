import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red[300],
            child: const Label( 
              text: "Рататуй",
              textColor: Colors.black,
            ),
          ),
          Container(
            color: Colors.blue[300],
            child: const Label(
              textColor: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10.0),
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Icon(
              Icons.breakfast_dining_outlined,
              color: Colors.white,
              size: 35.0,
            ),
            const Icon(
              Icons.zoom_out_outlined,
              color: Colors.white,
              size: 35.0,
            ),
            const Icon(
              Icons.share_arrival_time_outlined,
              color: Colors.white,
              size: 35.0,
            ),
            const Icon(
              Icons.g_mobiledata_outlined,
              color: Colors.white,
              size: 35.0,
            )
          ],
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label({Key? key, this.text, this.textColor}) : super(key: key);

  final String? text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        (text != null) 
          ? text!
          : "XD",
        style: TextStyle(
          fontSize: 45.0,
          fontWeight: FontWeight.w900,
          color: (textColor != null)
            ? textColor
            : Colors.black
        ),
      ),
    );
  }
}