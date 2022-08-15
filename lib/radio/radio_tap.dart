import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/play_radio.png'),
        Text(AppLocalizations.of(context)!.quranRadio,textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_left_sharp,color: MyTheme.gold,size: 50,),
            Icon(Icons.play_arrow_rounded,color: MyTheme.gold,size: 50,),
            Icon(Icons.arrow_right_sharp,color: MyTheme.gold,size: 50,),
          ],
        )
      ],
    );
  }
}
