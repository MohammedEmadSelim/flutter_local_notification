import 'package:flutter/material.dart';
import 'package:local_notification/notfication.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationApi.init();
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
      home: const MyHomePage(title: 'Local Notification'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              NotificationApi.showNotification(id: 0,title: 'test',body: 'content' );
            }, child: Text('Show Notification ')),
            ElevatedButton(onPressed: () {}, child: Text('Show Notification ')),
            ElevatedButton(onPressed: () {}, child: Text('Show Notification ')),
          ],
        ),
      ),
    );
  }
}
