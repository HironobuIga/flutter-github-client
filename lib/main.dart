import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/configuration/environment.dart';

import 'app.dart';
import 'configuration/flavor.dart';

void main() {
  final flavor = EnumToString.fromString(
    Flavor.values,
    const String.fromEnvironment('FLAVOR'),
  );
  final environment = AppEnvironment(flavor: flavor);
  runApp(App(environment: environment));
}