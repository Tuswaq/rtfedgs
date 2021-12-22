import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage(),
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
    return Scaffold(
      body: Column(
        children: [
          FriendItem(
            nickname: "Привет",
          ),
          FriendItem(
            nickname: "Пока",
          ),
        ],
      ),
    );
  }
}


class FriendItem extends StatelessWidget {
  const FriendItem({Key? key, this.nickname}) : super(key: key);

  final String? nickname;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundImage:const NetworkImage ("https://ktonanovenkogo.ru/image/priroda-gora.jpg"),
        ),
        Text( nickname!)
      ],
    );
  }
}




