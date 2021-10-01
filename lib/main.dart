import 'package:astrvizor/main_screen/first_active_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Color(0XFFE5E5E5)),
      debugShowCheckedModeBanner: false,
      routes: {
        '/first_active_screen': (context) => FirstActiveScreen(),
      },
      initialRoute: "/first_active_screen",
    );
  }
}
