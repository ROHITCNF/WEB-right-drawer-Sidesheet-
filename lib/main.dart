import 'package:flutter/material.dart';
import 'package:flutter_application_side_sheet_1/widgets/body_part3.dart';
import 'package:flutter_application_side_sheet_1/widgets/side_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Side Sheet'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AppBar myAppBar = AppBar(

      // ignore: prefer_const_constructors
      title: Text(
        'Side Sheet demo',
        style: const TextStyle(color: Colors.black87),
      ),
      backgroundColor: Colors.white);
  @override
  Widget build(BuildContext context) {
    // print(myAppBar.preferredSize.height);
    // print('Builded');
    return Scaffold(
      appBar: myAppBar,
      body: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [const SideBar(), const BodyPart3()],
      ),
    );
  }
}
