import 'package:flutter/material.dart';
import 'dart:isolate';

void main() {
  var useIsolate = true;
  ReceivePort receivePort = ReceivePort();
  if (useIsolate) {
    Isolate.spawn(_doNothing, receivePort.sendPort);
  } else {
    receivePort.sendPort.send('None');
  }
  receivePort.listen((msg) {
    print('Running App');
    runApp(MyApp(msg));
  });
}

void _doNothing(SendPort sendPort) {
  print('Isolate started');
  sendPort.send('Started');
}

class MyApp extends StatelessWidget {
  final String msg;

  MyApp(this.msg);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Isolate Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Isolate State: $msg',
              ),
            ],
          ),
        ),
      )
    );
  }
}
