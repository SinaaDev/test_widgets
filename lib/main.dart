import 'package:flutter/material.dart';
import 'package:task_widget/widgets/bottom_bar_widget.dart';
import 'package:task_widget/widgets/dashboard_widget.dart';
import 'package:task_widget/widgets/dialog_widget.dart';
import 'package:task_widget/widgets/drawer_widget.dart';
import 'package:task_widget/widgets/expansion_panel_widget.dart';
import 'package:task_widget/widgets/tabbar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        listTileTheme: ListTileThemeData(
          selectedTileColor: Colors.purple[100],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          selectedColor: Colors.purple,
          minTileHeight: 15,
          minVerticalPadding: 15
        )
      ),
      home:DashboardWidget(),
    );
  }
}
