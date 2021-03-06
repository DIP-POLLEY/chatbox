<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Provides simple UI design for chat applications. Developers can focus more on the chat functionality rather than creating unique UI.


## Features

### DemoScreen
<img src="https://raw.githubusercontent.com/DIP-POLLEY/chatbox/main/img_2.png"/>
<br>
<img src="https://raw.githubusercontent.com/DIP-POLLEY/chatbox/main/img_3.png"/>
<br>
<img src="https://raw.githubusercontent.com/DIP-POLLEY/chatbox/main/img_4.png"/>

### Sending Message
<img src="https://raw.githubusercontent.com/DIP-POLLEY/chatbox/main/img.png"/>

### Recieving Message
<img src="https://raw.githubusercontent.com/DIP-POLLEY/chatbox/main/img_1.png"/>


## Getting started

### Requirement
`Dart >=2.17.0 < 3.0.0` and `Flutter >=1.17.0`

## Usage

This is how you can call the chatbox and use the UI.

### Sending
```dart
const ChatBox(
message: "Text message here",
imageURL: "https://picsum.photos/250?image=9",//Sending GIF or Image
recieved: false,
chatBoxColor: Colors.greenAccent,
textColor: Colors.black,
time: "1:15",
),
```

### Receiving
```dart
const ChatBox(
message: "Text message here",
imageURL:"https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",//Receiving GIF or Image
recieved: true,
chatBoxColor: Colors.greenAccent,
textColor: Colors.black,
time: "1:15",
),
```

### Hyperlinks
```dart
const ChatBox(
message: "https://pub.dev/packages/chatbox",
recieved: false,
chatBoxColor: Colors.greenAccent,
textColor: Colors.black,
time: "1:15",
),
```

### Share Documents
```dart
ChatBox(
doculink: "http://www.africau.edu/images/default/sample.pdf",
recieved: false,
chatBoxColor: Colors.greenAccent,
textColor: Colors.black,
time: "1:15",
),
```

## Additional information

You are allowed to raise an issue create a solution and raise a PR. If the issue and the solution are valid it will be merged.