import 'package:book_app/src/page/home/widget/custom_app_bar.dart';
import 'package:book_app/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final SettingsController settingsController;
  const HomePage({Key? key, required this.settingsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [CustomAppBar(settingsController: settingsController)],
      ),
    );
  }
}
