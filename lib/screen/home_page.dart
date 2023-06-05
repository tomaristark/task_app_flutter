import 'package:flutter/material.dart';
import 'package:task_app/constant/dimens.dart';
import 'package:task_app/item_view/home_page_item_view.dart';

import '../constant/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kHomePageBackgroundColor ,
      appBar: AppBar(
        backgroundColor:kPrimaryColor,
        elevation: 0,
        leading:const Padding(
          padding: EdgeInsets.only(left: kSP20x),
        child :Icon(Icons.arrow_back,color:  kIconColor,size: kIconSize,),),
        actions:const  [
          Padding(
            padding: EdgeInsets.only(right: kSP20x),
            child: Icon(Icons.search , color:  kIconColor,size: kIconSize,),
          ),
        ],
      ),
      body: const HomePageItemView(),
    );
  }
}