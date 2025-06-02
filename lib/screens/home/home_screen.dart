import 'package:carrot_app/my_util.dart';
import 'package:carrot_app/my_util.dart';
import 'package:carrot_app/model/product.dart';
import 'package:carrot_app/screens/home/detail/home_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/product.dart';
import 'component/list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    print("HomeScreen build");
    return Scaffold(
      appBar: _appbar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          Product p = productList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailScreen()),
                );
              },
              child: ListItem(p: p));
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: productList.length,
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Row(
        children: [
          Text("좌동"),
          SizedBox(width: 4),
          Icon(CupertinoIcons.chevron_down),
        ],
      ),
      actions: [
        IconButton(icon: const Icon(CupertinoIcons.search), onPressed: () {}),
        IconButton(icon: const Icon(CupertinoIcons.list_dash), onPressed: () {}),
        IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 0.5),
        child: Divider(
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
    );
  }
}

