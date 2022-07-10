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
            time: "1:15",
          ),
          ChatBox(
            message: "Hello",
            recieved: true,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
            time: "1:15",
          ),
          ChatBox(
            message: "Now we can share images also",
            imageURL: "https://picsum.photos/250?image=9",
            recieved: false,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
            time: "1:15",
          ),
          ChatBox(
            message: "Yes Gifs are supported now",
            imageURL:
                "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
            recieved: true,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
            time: "1:15",
          ),
          ChatBox(
            message: "https://pub.dev/packages/chatbox",
            recieved: false,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
            time: "1:15",
          ),
          ChatBox(
            doculink:
                "https://firebasestorage.googleapis.com/v0/b/whatsapp-4a91a.appspot.com/o/loading.gif?alt=media&token=268c0d30-f552-4fb0-800d-0cb5506e24c5",
            recieved: true,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
            time: "1:15",
          ),
          ChatBox(
            doculink: "http://www.africau.edu/images/default/sample.pdf",
            recieved: false,
            chatBoxColor: Colors.greenAccent,
            textColor: Colors.black,
            time: "1:15",
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
