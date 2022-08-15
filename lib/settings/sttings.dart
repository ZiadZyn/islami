import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/provider.dart';
import 'package:islami/settings/language_bottom_sheet.dart';
import 'package:islami/settings/theming_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTap extends StatefulWidget {

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){ShowLanguageBottomSheet();},
            child: Container(
              decoration: BoxDecoration(
                color: MyTheme.gold,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appLanguage=='en'?'English':'Arabic',
                style: Theme.of(context).textTheme.subtitle2,),
                  Icon(Icons.arrow_drop_down_sharp,)
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('Theming',style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){ShowThemingBottomSheet();},
            child: Container(
              decoration: BoxDecoration(
                color: MyTheme.gold,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appTheme==ThemeMode.dark?'Dark Mode':'Light Mode',style: Theme.of(context).textTheme.subtitle2,),
                  Icon(Icons.arrow_drop_down_sharp,)
                ],
              ),
            ),
          ),

        ]
      ),
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return LanguageBottomSheet();
        }
    );
  }
  void ShowThemingBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return ThemingBottomSheet();
        }
    );
  }
}
