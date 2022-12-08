import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Widget mainView = const LoginView();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      title: 'JamurAja!',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
