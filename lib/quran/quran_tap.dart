import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/quran/sura_names.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTap extends StatelessWidget {
 List<String> suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
 ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
 ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
 ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
 ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
 ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
 ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
 ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
 ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
 "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
              child: Center(child: Image.asset('assets/images/image_quran.png'))
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Divider(
                    color: MyTheme.gold,
                    height: 1,
                    thickness: 1,
                  ),
                  Text(AppLocalizations.of(context)!.suraName,style: Theme.of(context).textTheme.subtitle2,),
                  Divider(
                    color: MyTheme.gold,
                    height: 1,
                    thickness: 1,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context,index){
                          return SuraNames(text: suraName[index] , index: index);
                        },
                        separatorBuilder: (context,index){
                          return Divider(
                            color: MyTheme.gold,
                            height: 1,
                            thickness: 1,
                          );
                        },
                        itemCount: suraName.length
                    ),
                  )
                ],
              ),
          )
        ],
      ),
    );
  }
}
