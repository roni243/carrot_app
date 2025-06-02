import 'package:flutter/material.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen();

  @override
  Widget build(BuildContext context) {
    print(HomeDetailScreen);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(child: Text("HomeDetailScreen")),
    );
  }
}
