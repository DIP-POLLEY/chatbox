import 'package:chatbox/chatbox.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: const [
          ChatBox(
            message: "Hi",
            recieved: false,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
          ),
          ChatBox(
            message: "Hello",
            recieved: true,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
          ),
          ChatBox(
            message: "Now we can share images also",
            imageURL: "https://picsum.photos/250?image=9",
            recieved: false,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
          ),
          ChatBox(
            message: "Yes Gifs are supported now",
            imageURL:
                "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
            recieved: true,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
          ),
          ChatBox(
            message: "https://pub.dev/packages/chatbox",
            recieved: false,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
