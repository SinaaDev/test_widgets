import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(CupertinoIcons.car),),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),),
          ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text('car'),),
          Center(child: Text('train'),),
          Center(child: Text('bike'),),
        ]),
      ),
    );
  }
}
