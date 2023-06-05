import 'package:flutter/material.dart';
import 'package:task_app/constant/color.dart';
import 'package:task_app/constant/dimens.dart';
import 'package:task_app/constant/string.dart';

import '../widget/home_pag_widget.dart';

class HomePageItemView extends StatelessWidget {
  const HomePageItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: kDateAndAddTaskContainerHeight,
          decoration: const BoxDecoration(
            color:kPrimaryColor,
            borderRadius: BorderRadius.only
            (bottomLeft: Radius.circular(kDateAndAddTaskContainerRadius),
              bottomRight: Radius.circular(kDateAndAddTaskContainerRadius)
            )
          ),
          child: const  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DateAndAddTaskButton(),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DateSelectWidget(
                      textMonth:kMonth,
                      textDate: "3",
                      textDay: "SUN",
                      isSelected: true,
                    ),
                    DateSelectWidget(
                      textMonth: kMonth,
                      textDate: "4",
                      textDay: "MON",
                    ),
                    DateSelectWidget(
                      textMonth: kMonth,
                      textDate:"5" ,
                      textDay: "TUE",
                    ),
                    DateSelectWidget(
                      textMonth: kMonth,
                      textDate: "6",
                      textDay: "WED",
                    ),
                    DateSelectWidget(
                      textMonth: kMonth,
                      textDate: "7",
                      textDay: "THU",
                    ),
                  
                  ],
                ),
              ),
              
            ],
          ),
          
        ),
        TaskText(),
        TaskWidget(),
        TaskWidget(),
        TaskWidget(),
        TaskWidget(),
        
      ],
    );
  }
}

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kTaskBoxWidth,
      height: kTaskBoxHeight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Container(
                  width: kIconCircleWidth,
                  height: kIconCircleHeight,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kButtonColor
                  ),
                ),
                const Positioned(
                  top: 8,
                  left: 10,
                  child: Icon(Icons.assignment,size: kTaskBoxIconSize,
                  color: kIconColorTaskBox,)),
              ],
            ),
          ),
          title: const Padding(
            padding:  EdgeInsets.only(top: 10,bottom: 8),
            child: Text(kTaskName,
            style: TextStyle(
              fontSize: kTaskNameFontSize,
              fontWeight: FontWeight.bold
            )
            ),
          ),
          subtitle: const Text(kTaskAddedTime,
          style:  TextStyle(
            fontSize: kTaskAddedTimeFontSize,
          ),
          ),
          trailing: const Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.more_vert,size: kTaskBoxIconSize,),
          ),
        ),
      ),
    );
  }
}

class TaskText extends StatelessWidget {
  const TaskText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children:[
        Padding(
          padding: const EdgeInsets.only(top: 35,left: 30, bottom: 20),
          child: Text("Task",style: TextStyle(
                fontSize: kTaskTextFontSize,
                fontWeight: FontWeight.bold,
                ),),
        ),
      ],
    );
  }
}



class DateAndAddTaskButton extends StatelessWidget {
  const DateAndAddTaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: kDateAndAddTaskButtonHeight,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: kDateAndAddTaskButtonPadding),
              child: Text(kDateText,style: TextStyle(
                fontSize: DateFontSize,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            AddTaskButton()
          ],
        ),
      );
  }
}

class AddTaskButton extends StatefulWidget {
  const AddTaskButton({
    super.key,
  });

  @override
  State<AddTaskButton> createState() => _AddTaskButtonState();
}

class _AddTaskButtonState extends State<AddTaskButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDateAndAddTaskButtonPadding),
      child: ElevatedButton(onPressed: (){ print("new task");},
       style: ElevatedButton.styleFrom(
        backgroundColor: kButtonColor,
        minimumSize: const Size(kAddTaskButtonWidth,kAddTaskButtonHeight),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kAddTaskRadius)),
        textStyle: const TextStyle(fontSize: kAddTaskFontSize) 
      ),
      child:const Row(
        children: [
          Icon(Icons.add),
          Text(kAddTask)
        ],
      )
      ),
    );
  }
}