import 'package:flutter/material.dart';

class SuraContent extends StatelessWidget {
String text;
int index;
SuraContent({required this.text,required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$text',style: Theme.of(context).textTheme.subtitle2,textAlign: TextAlign.center,),

    );
  }
}
