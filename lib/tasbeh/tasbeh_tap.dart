import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class TasbehTap extends StatefulWidget {

  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  int counter =0;
  int index=0;
  List<String> tasbeh=['سبحان الله','الحمدلله','لا اله الا الله','الله اكبر','لا حول ولا قوة الا بلله'];
  double angel=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(

        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head_sebha.png'),
              InkWell(
                onTap: ClickOnSebha,
                child: Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.height * .07),
                    child: Transform.rotate(
                      angle: angel,
                        child: Image.asset('assets/images/body_sebha.png')
                    )
                ),
              ),
            ],
          ),
          Text('عدد التسبيحات', textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyTheme.gold,
            ),
            padding: EdgeInsets.only(top: 25),
            height: 81,
            width: 69,
            child: Text('$counter',textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1,),
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyTheme.gold,
            ),
            padding: EdgeInsets.all(5),

            child: Text('${tasbeh[index]}',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,),
          ),
        ],
      ),
    );
  }
  void ClickOnSebha(){
    counter++;
    if(counter %33==0){
      index++;
      if(index==tasbeh.length){
        index=0;
      }
    }
    angel+=1/15;
    setState(() {

    });
  }
}
