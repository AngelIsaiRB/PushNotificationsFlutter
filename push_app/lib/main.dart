import 'package:flutter/material.dart';
import 'package:push_app/pages/detalle_page.dart';
import 'package:push_app/pages/home_page.dart';
import 'package:push_app/providers/push_notification_provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<NavigatorState> navigatorKey =  new GlobalKey<NavigatorState>();

  @override
  void initState() { 
    super.initState();
    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();  
    pushProvider.mesnajesStream.listen((event) {
      print("+++++++++++++++++++++++++++++++++++: $event");
      navigatorKey.currentState.pushNamed("mensaje", arguments: event);

     });

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "home",
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      routes: {
        "home":(BuildContext context)=>HomePage(),
        "mensaje": (BuildContext contex)=> MessagePage(),
      },      
    );
  }
}