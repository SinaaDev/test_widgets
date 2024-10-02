import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Dashboard'),backgroundColor: Colors.brown[200],),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _dashboardInput('Full Name'),
            const SizedBox(height: 24,),
            Row(
              children: [
                Expanded(child: _dashboardInput('Department')),
                const SizedBox(width: 12,),
                Expanded(child: _dashboardInput('Years of Study')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _dashboardInput(String title)=> Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    TextField(
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
      ),
    )
  ],
);


