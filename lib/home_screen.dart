import 'package:flutter/material.dart';
import 'package:task_widget/widgets/dashboard_widget.dart';
import 'package:task_widget/widgets/dialog_widget.dart';
import 'package:task_widget/widgets/drawer_widget.dart';
import 'package:task_widget/widgets/expansion_panel_widget.dart';
import 'package:task_widget/widgets/image_viewer_widget.dart';
import 'package:task_widget/widgets/tabbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardWidget(),));}, child: const Text('Dashboard')),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DialogWidget(),));}, child: const Text('Dialog')),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DrawerWidget(),));}, child: const Text('Drawer')),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const MyExpansionPanelList(),));}, child: const Text('Expansion list')),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const TabBarWidget(),));}, child: const Text('Tab bar')),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ImageViewerWidget(),));}, child: const Text('Image viewer')),
        ],
      ),
    );
  }
}
