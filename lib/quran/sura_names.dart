import 'package:flutter/material.dart';
import 'package:islami/quran/sura.dart';

class SuraNames extends StatelessWidget {
 String text;
 int index;
 SuraNames({required this.text, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(Sura.routeName , arguments: SuraArgs(name: text, index:index));
      },
      child: Text(text,style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,),
    );
  }
}
