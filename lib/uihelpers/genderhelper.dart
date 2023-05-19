import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_flutter_app/tools/col.dart';
import '../tools/applayout.dart';
import '../tools/appstate.dart';

class genderhelper extends StatelessWidget {
  genderhelper({Key? key,required this.text2}) : super(key: key);
  String text2;

  @override
  Widget build(BuildContext context) {

    AppState provider = Provider.of<AppState>(context);

    return AnimatedContainer(

      width: AppLayout.getwidth(context)*0.4,
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        color: col.wh,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            width: 2,
            color: provider.cat == text2 ? col.pruple : col.gr
        ),

      ),

      child: InkWell(
        onTap: (){
          provider.cat = text2;
          provider.notifyListeners();
        },

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text2,style: TextStyle(fontFamily: 'pointpanther',
              fontSize: AppLayout.getwidth(context)*0.05,color: col.pruple),textAlign: TextAlign.center,),
        ),

      ),

    );
  }
}