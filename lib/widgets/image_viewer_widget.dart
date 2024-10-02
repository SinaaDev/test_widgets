import 'package:flutter/material.dart';

class ImageViewerWidget extends StatelessWidget {
  const ImageViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animals'),backgroundColor: Colors.grey,),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: ListView(
          children: [
            _animalItem('https://ars.els-cdn.com/content/image/3-s2.0-B9780323851251000934-f00093-04-9780323851251.jpg',context),
            _animalItem('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlBz88NTIRrPRZK8oTnnjxV2FW6iKM2fSeMg&s',context),
            _animalItem('https://avianhybrids.wordpress.com/wp-content/uploads/2021/05/ara_macao_-fort_worth_zoo-8.jpg?w=640',context),
            _animalItem('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPVjHG9fzlpYwcdi48CHTTPNRE1hkddS4-KA&s',context),
            _animalItem('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBrHqiPbTqwpEx-vQN-8hVQg4OZacc9Tuiw&s',context),
            _animalItem('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwmzOLCuRXJF-Lx7kI0MPoPx3F1VHgj3qxJg&s',context),
          ],
        ),
      ),
    );
  }
}

class ImageViewer extends StatelessWidget {
  final String url;
  const ImageViewer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: url,
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}


Widget _animalItem(String url,BuildContext context)=>Hero(
  tag: url,
  child: ListTile(
    leading: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ImageViewer(url: url),));
      },
      child: Container(
        color: Colors.grey,
        width: 80,
        height: 60,
        child: Image.network(url,fit: BoxFit.fill,),
      ),
    ),
    title: Text('parrot'),
    subtitle: Text('This is a parrot fr'),
  ),
);

