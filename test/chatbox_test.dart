import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:chatbox/chatbox.dart';

void main() {
  test('checks chat box', () {
    const chatbox = ChatBox(
      message: "India is my country",
      recieved: false,
      chatBoxColor: Colors.greenAccent,
      time: "02:15",
    );
    expect(chatbox.message, "India is my country");
    expect(chatbox.recieved, false);
  });
}
