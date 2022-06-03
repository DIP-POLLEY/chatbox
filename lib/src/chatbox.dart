import 'package:http/http.dart' as http;


import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({
    Key? key,
    this.message="",
    required this.recieved,
    required this.chatBoxColor,
    this.textColor = Colors.black,
  }) : super(key: key);

  final String message;
  final bool recieved;
  final Color chatBoxColor;
  final Color textColor;

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  bool _recieved = true;
  String _message = "No message was sent";
  Color _chatBoxColor = Colors.greenAccent;
  Color _textColor = Colors.greenAccent;
  String _imageURL='https://docs.flutter.dev/assets/images/dash/dash-fainting.gif';
  bool checknetwork=false;
  final now = DateTime.now();


  void checkconnection() async{
    final response = await http.get(Uri.parse(_imageURL));


    if ( response.statusCode == 200) {

      setState(() {
        checknetwork = true;
      });
    }
    else
    {
      setState(() {
        checknetwork = false;
      });
    }


  }

  @override
  void initState() {
    super.initState();
    _recieved = widget.recieved;
    _message = widget.message;
    _chatBoxColor = widget.chatBoxColor;
    _textColor = widget.textColor;
    checkconnection();
  }

  @override
  Widget build(BuildContext context) {
    return _recieved == true
        ? Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Container(
          // width: 250,
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 2 / 3,
            minWidth: MediaQuery.of(context).size.width / 4,
            minHeight: MediaQuery.of(context).size.height / 15,
          ),
          decoration: BoxDecoration(
            color: _chatBoxColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: _imageURL!=""?
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: !checknetwork?
                Image.asset(
                  "packages/chatbox/assets/loading.gif",
                  height: 20,
                )
                    :Image.network(
                    _imageURL,
                    loadingBuilder: (BuildContext context, Widget child,ImageChunkEvent? loadingProgress)
                    {
                      if (loadingProgress == null) return child;
                      return SizedBox(
                        height: 100,
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    }
                ),
              )
                  :RichText(
                text: TextSpan(
                  text: _message!=""?"$_message\n":"\n",
                  style: TextStyle(
                    color: _textColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                        "${(now.hour).toString().padLeft(2, "0")}:${(now.minute).toString().padLeft(2, "0")}",
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              )),
        ),
      ),
    )
        : Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 150, right: 10),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 2 / 3,
            minWidth: MediaQuery.of(context).size.width / 5,
            minHeight: MediaQuery.of(context).size.height / 15,
          ),
          decoration: BoxDecoration(
            color: _chatBoxColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                text: TextSpan(
                  text: "$_message\n",
                  style: TextStyle(
                    color: _textColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                        "${(now.hour).toString().padLeft(2, "0")}:${(now.minute).toString().padLeft(2, "0")}",
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              )
          ),
        ),
      ),
    );

  }
}