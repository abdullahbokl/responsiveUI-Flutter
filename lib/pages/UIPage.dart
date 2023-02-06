import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/dimensions.dart';
import 'package:ui/models/task_model.dart';
import 'package:ui/pages/middle_square.dart';
import 'package:ui/widgets/custom_card.dart';
import 'package:ui/widgets/show_all_widget.dart';
import 'package:ui/widgets/small_text.dart';
import 'package:ui/widgets/title_text.dart';

class UIPage extends StatelessWidget {
  UIPage({Key? key}) : super(key: key);

  final List<TaskModel> tasks = [
    TaskModel(
        image: Image.asset('assets/images/todo_list.png'),
        title: 'Online Class Routine',
        date: '10/12/2022'),
    TaskModel(
        image: Image.asset('assets/images/todo_list.png'),
        title: 'Office Work List',
        date: '15/12/2022'),
    TaskModel(
        image: Image.asset('assets/images/todo_list.png'),
        title: 'Day Task',
        date: '19/12/2022'),
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.kScaffoldColor,
        body: SingleChildScrollView(
          child: LimitedBox(
            maxHeight: Constants.screenHeight - Dimensions.bottomNavigationBarHeight,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              // color: Colors.red,
              child: Stack(
                children: [
                  /// background image
                  _backGroundImage(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.height40,
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        bottom: Dimensions.height7
                    ),
                    child: Column(
                      children: [
                        /// app bar
                        _appBar(),
                        SizedBox(height: Dimensions.height25),

                        /// middle square and todos image
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const MiddleSquare(),
                            Positioned(
                              right: Dimensions.width_15,
                              bottom: Dimensions.height_15,
                              child: _todosImage(),
                            )
                          ],
                        ),
                        SizedBox(height: Dimensions.height20),

                        /// reminders
                        ShowAllWidget(title: 'Reminder Task'),
                        SizedBox(height: Dimensions.height15),

                        /// Horizontal listView
                        _buildHorizontalListView(),
                        SizedBox(height: Dimensions.height20),
                        ShowAllWidget(title: 'All Tasks', titleColor: Constants.kBGColor1, descColor: Colors.grey,),
                        SizedBox(height: Dimensions.height10),
                        /// Vertical listView
                        _buildVerticalListView(),

                      ],
                    ),
                  ),
                  //
                ],
              ),
            ),
          ),
        ),

        /// bottom navigation bar
      ),
    );
  }
  /// horizontal list view
  _buildHorizontalListView() {
    return SizedBox(
      height: Dimensions.height110,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return CustomCard(
            task: tasks[index],
          );
        },
        separatorBuilder: (context, index) =>
            SizedBox(width: Dimensions.width15),
      ),
    );
  }

  /// background image
  Container _backGroundImage() {
    return Container(
      height: Dimensions.bgHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Dimensions.radius20),
          bottomRight: Radius.circular(Dimensions.radius20),
        ),
      ),
    );
  }

  /// avatar and welcome message
  Row _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // welcome message
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText(text: 'Hi, Habib 👋', fontSize: Dimensions.font22),
            SizedBox(height: Dimensions.height7),
            SmallText(
              text: 'Let’s explore your notes',
            ),
          ],
        ),
        // avatar image
        Container(
          height: Dimensions.height55,
          width: Dimensions.width55,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/profile.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(Dimensions.bgHeight),
            border: Border.all(
              color: Constants.kSecondaryColor,
              width: Dimensions.height3,
            ),
          ),
        ),
      ],
    );
  }

  /// todos image
  _todosImage() {
    return Container(
      height: Dimensions.height110,
      width: Dimensions.width110,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/iconForBanner.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// vertical list view
  _buildVerticalListView() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return CustomCard(
              task: tasks[index],
              height: Dimensions.height100,
              width: double.infinity,
            );
          },
          separatorBuilder: (context, index) =>
              SizedBox(height: Dimensions.height10),
        ),
      ),
    );
  }
}
