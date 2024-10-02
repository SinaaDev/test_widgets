import 'package:flutter/material.dart';

class MyExpansionPanelList extends StatefulWidget {
  const MyExpansionPanelList({super.key});

  @override
  State<MyExpansionPanelList> createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  final List<Item> items = [
    Item('Panel 1', 'This is the body of item number 1'),
    Item('Panel 2', 'This is the body of item number 2'),
    Item('Panel 3', 'This is the body of item number 3'),
    Item('Panel 4', 'This is the body of item number 4'),
    Item('Panel 5', 'This is the body of item number 5'),
    Item('Panel 6', 'This is the body of item number 6'),
    Item('Panel 7', 'This is the body of item number 7'),
    Item('Panel 8', 'This is the body of item number 8'),
    Item('Panel 9', 'This is the body of item number 9'),
    Item('Panel 10', 'This is the body of item number 10'),
    Item('Panel 11', 'This is the body of item number 11'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Expansion Panel'),backgroundColor: Colors.green[200],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                items[panelIndex].isExpanded = isExpanded;
              });
            },
            children: items.map((item) {
              return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text(item.header),
                  );
                },
                canTapOnHeader: true,
                body: ListTile(
                  title: Text(item.body),
                ),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Item {
  final String header;
  final String body;
  bool isExpanded;

  Item(this.header, this.body, {this.isExpanded = false});
}

