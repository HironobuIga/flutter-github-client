import 'package:flutter/material.dart';
import 'package:flutter_github_client/configuration/environment.dart';

import 'configuration/flavor.dart';
import 'page/pages.dart';

class App extends StatelessWidget {
  App({this.environment});
  final AppEnvironment environment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}