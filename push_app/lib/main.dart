import 'package:flutter/material.dart';
import 'package:push_app/pages/detalle_page.dart';
import 'package:push_app/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "home",
      debugShowCheckedModeBanner: false,
      routes: {
        "home":(BuildContext context)=>HomePage(),
        "mensaje": (BuildContext contex)=> MessagePage(),
      },      
    );
  }
}