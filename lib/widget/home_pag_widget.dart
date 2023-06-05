import 'package:flutter/material.dart';
import 'package:task_app/constant/dimens.dart';

import '../constant/color.dart';
class DateSelectWidget extends StatelessWidget {
  const DateSelectWidget({
    super.key,
    this.textMonth,
    this.textDate,
    this.textDay,
    this.isSelected=false
  });
  final textMonth;
  final textDate;
  final textDay;
  final isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kDateSelectWidgetWidth,
      height: kDateSelectWidgetHeight,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: (isSelected)?
          BorderRadius.circular(10): BorderRadius.zero),
        color: (isSelected) ? kButtonColor : kPrimaryColor,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(textMonth,style: TextStyle(
                fontSize: 15,
                color:(isSelected) ? kSecondaryTextColor :kPrimaryTextColor
              ),),
            ),
            Text(textDate,style: TextStyle(
              fontSize: 30,
              color: (isSelected) ? kSecondaryTextColor :kPrimaryTextColor
            ),),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(textDay,style: TextStyle(
                fontSize: 15,
                color: (isSelected) ? kSecondaryTextColor :kPrimaryTextColor
              ),),
            )
          ],
        ),
      ),
    );
  }
}