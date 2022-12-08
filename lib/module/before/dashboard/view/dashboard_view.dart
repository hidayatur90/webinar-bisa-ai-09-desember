import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:hexcolor/hexcolor.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(
              fontFamily: 'Red Hat Display',
              fontSize: 24,
              color: HexColor('#2F4545')),
        ),
        backgroundColor: HexColor('#FFDE5B'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () => controller.moveToProfil(),
              icon: Icon(
                Icons.person,
                size: 24.0,
                color: HexColor('#2F4545'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
