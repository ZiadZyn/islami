import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_details.dart';
import 'package:islami/hadeth/hadeth_tab.dart';
import 'package:islami/provider/provider.dart';
import 'package:islami/quran/quran_tap.dart';
import 'package:islami/radio/radio_tap.dart';
import 'package:islami/settings/sttings.dart';
import 'package:islami/tasbeh/tasbeh_tap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';

class Home extends StatefulWidget {
  static String routeName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        Image.asset(provider.BacgroundTheme(), fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami, style: Theme.of(context).textTheme.headline4,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyTheme.gold
            ),
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index){
                  currentIndex = index;
                  setState(() {

                  });
                },
                items: [
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.quran,
                    icon: ImageIcon(
                      AssetImage('assets/images/quran.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.hadeth,
                    icon: ImageIcon(
                      AssetImage('assets/images/hadeth.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.tasbeh,
                    icon: ImageIcon(
                      AssetImage('assets/images/sebha.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.radio,
                    icon: ImageIcon(
                      AssetImage('assets/images/radio.png'),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: AppLocalizations.of(context)!.settings,
                    icon: Icon(Icons.settings)
                  ),
                ],
              ),
            ),
          ),
          body: tabs[currentIndex],
        ),

      ],
    );
  }
  List<Widget> tabs =[
    QuranTap(),HadethTab(),TasbehTap(),RadioTap(),SettingsTap()
  ];
}
