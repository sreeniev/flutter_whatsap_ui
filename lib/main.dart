import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp Demo'),
        ),
        body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('Person $index'),
                  subtitle: Text('Message $index'),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                  trailing: Text('10:00 AM'),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 10),
        ));
  }
}
