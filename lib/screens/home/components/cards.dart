import 'package:flutter/material.dart';
import 'package:health_exercises/screens/home/components/color_schemes.g.dart';

class MyCard extends StatefulWidget {
  String text;
  String image_path;
  MyCard({super.key, required this.text, required this.image_path});
 
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: lightColorScheme.primary.withOpacity(0.7),
      child: Column(
        children: [
          Image.asset(width: 150, widget.image_path),
          TitleText(text: widget.text, context: context,),
        ],
      ),
    );
  }
}

Text TitleText({required String text, required BuildContext context}){
  return Text(text, style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.left,);
}
Text SubtitleText({required String text, required BuildContext context}){
  return Text(text, style: Theme.of(context).textTheme.titleMedium,);
}