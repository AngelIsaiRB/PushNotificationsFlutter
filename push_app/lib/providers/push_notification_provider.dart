import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider{
//dqnyJ_4mTh2HnPcAkMXVX3:APA91bFKt0iwuRQOwYMDRxVY7OG_RAlQ3vpsiCrxz7tYOfND0-PLP-8eFIPMh7N6YsSNqfGf-Hh49dZoVW3QsqhRZp8f4I_Eh58oaILIr2H7nCoLDcWTG3sW1Fi9pypwYBS3bDDJDshw

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

 static  Future<dynamic> onBackgroundMessage(Map<String, dynamic> message) async {
   
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
  }

  // Or do other work.
}

  initNotifications()async {
    
    await _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.configure();
    final token = await _firebaseMessaging.getToken();
    print("==================FCM Token===================");
    print (token);


   _firebaseMessaging.configure(
        onMessage:onMessage ,
        onBackgroundMessage: onBackgroundMessage,
        onLaunch: onLaunch,
        onResume: onResume,
      );
  }

  Future<dynamic> onMessage(Map<String, dynamic> message) async {
    print("=========on message============");
    print ("message: $message");
    
  // Or do other work.
}
 Future<dynamic> onLaunch(Map<String, dynamic> message) async {
    print("=========onLaunch============");
    print ("message: $message");
  // Or do other work.
}
 Future<dynamic> onResume(Map<String, dynamic> message) async {
    print("=========onResume============");
    print ("message: $message");
  // Or do other work.
}
}