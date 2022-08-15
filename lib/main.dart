import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_details.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/provider.dart';
import 'package:islami/quran/sura.dart';
import 'package:provider/provider.dart';
import 'home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>AppConfigProvider(),
      child: MyApp()));
}
 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName:(context)=>Home(),
        Sura.routeName:(context)=>Sura(),
        HadethDetails.routeName :(context)=>HadethDetails(),
      },
      initialRoute: Home.routeName,
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.darkMode,
      themeMode: provider.appTheme,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }

 }
