import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage='en';
  ThemeMode appTheme = ThemeMode.light;

  void ChangeLanguage(String newLanguage){
    if(appLanguage==newLanguage){return;}
    appLanguage=newLanguage;
    notifyListeners();
  }
  void ChangeTheme(ThemeMode newTheme){
    if(appTheme==newTheme){return;}
    appTheme=newTheme;
    notifyListeners();
  }
  String BacgroundTheme(){
    if(ThemeMode.light==appTheme){
      return 'assets/images/main_background.png';
      notifyListeners();
    }else{
      return 'assets/images/dark_background.png';
      notifyListeners();
    }

  }
}