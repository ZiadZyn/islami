import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/provider.dart';
import 'package:islami/quran/sura_content.dart';
import 'package:provider/provider.dart';


class Sura extends StatefulWidget {
  static String routeName = 'sura';

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String> line=[];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    LoadFiles(args.index);
    return Stack(children: [
      Image.asset(
        provider.BacgroundTheme(),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context,index){
              return line.length==0?
                  Center(child: CircularProgressIndicator(backgroundColor: MyTheme.gold,))
              :
                  SuraContent(text: line[index], index: index)
              ;
            },
            separatorBuilder: (context,index){
              return Divider(
                color: MyTheme.gold,
                height: 1,
                thickness: 1,
              );
            },
            itemCount: line.length ),
      )
    ]);
  }

  void LoadFiles(int index) async{
    String suraContent=await rootBundle.loadString('assets/quran/${index+1}.txt');
    List<String> lines=suraContent.split('\n');
    line=lines;
    setState(() {
      
    });
  }
}

class SuraArgs {
  String name;
  int index;
  SuraArgs({required this.name, required this.index});
}
