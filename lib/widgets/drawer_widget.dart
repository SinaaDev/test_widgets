import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(radius: 10,child: Icon(Icons.person,size: 30,color: Colors.grey,),),
                accountName: Text('Alisina',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                accountEmail: Text('alisina.haidari2004@gmail.com',style: TextStyle(color: Colors.black),),
                decoration: BoxDecoration(color: Colors.transparent),
              ),
              ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('My Files'),
                selected: selectedIndex == 0,
                onTap: (){
                  selectedIndex = 0;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Shared with me'),
                selected: selectedIndex == 1,
                onTap: (){
                  selectedIndex = 1;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text('Starred'),
                selected: selectedIndex == 2,
                onTap: (){
                  selectedIndex = 2;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text('Recent'),
                selected: selectedIndex == 3,
                onTap: (){
                  selectedIndex = 3;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.offline_pin),
                title: const Text('Offline'),
                selected: selectedIndex == 4,
                onTap: (){
                  selectedIndex = 4;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.upload_file),
                title: const Text('Uploads'),
                selected: selectedIndex == 5,
                onTap: (){
                  selectedIndex = 5;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.backup),
                title: const Text('Backups'),
                selected: selectedIndex == 6,
                onTap: (){
                  selectedIndex = 6;
                  setState(() {});
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Trash'),
                selected: selectedIndex == 7,
                onTap: (){
                  selectedIndex = 7;
                  setState(() {});
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings & account'),
                selected: selectedIndex == 8,
                onTap: (){
                  selectedIndex = 8;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
