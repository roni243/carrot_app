import 'package:carrot_app/model/icon_menu.dart';
import 'package:carrot_app/screens/components/card_icon_menu.dart';
import 'package:flutter/material.dart';

import 'components/my_carrot_header.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen();

  @override
  Widget build(BuildContext context) {
    print(MyCarrotScreen);
    return Scaffold(
      appBar: AppBar(
        title: const Text('나의 당근'),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
        ),

      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu3),

        ],
      )
    );
  }
}
