import 'package:flutter/material.dart';
import 'home_widgets/custom_app_bar.dart';
import 'home_widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomTopBar(title: "Welcome to planQ support system"),
      body: HomeBody()
    );
  }
}
