import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  void _openAlertDialog(BuildContext context){
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Reset Settings?'),
      content: Text('This will reset your device to its default factory settings'),
      actions: [
        TextButton(onPressed: ()=>Navigator.pop(context), child: Text('CANCEL')),
        TextButton(onPressed: ()=>Navigator.pop(context), child: Text('ACCEPT')),
      ],
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed:()=> _openAlertDialog(context),
          child: Text('Reset Setting'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
