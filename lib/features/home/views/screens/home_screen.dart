import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minimaltodoapp/core/layout/component/app_text.dart';
import 'package:minimaltodoapp/core/layout/foundation/app_shapes.dart';
import 'package:minimaltodoapp/core/theme/theme_global.dart';
import 'package:minimaltodoapp/core/widget/menu_icon.dart';
import 'package:minimaltodoapp/features/home/views/widgets/list_tasks_progress_widget.dart';
import 'package:minimaltodoapp/features/task/view/widget/task_progress_card_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   height: 220,
          //   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30),
          //     color: Colors.white,
          //   ),
          //   width: MediaQuery.of(context).size.width,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const SizedBox(height: 30),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.all(5),
          //             child: MenuIconApp(onTap: () {}),
          //           ),
          //           const Padding(
          //             padding: EdgeInsets.symmetric(vertical: 5),
          //             child: Icon(
          //               Icons.notifications,
          //               size: 30,
          //             ),
          //           ),
          //         ],
          //       ),
          //       const SizedBox(height: 20),
          //       const Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           SizedBox(
          //             width: 100,
          //             height: 100,
          //             child: CircleAvatar(
          //               backgroundImage: AssetImage(
          //                 'assets/user_icon.png',
          //               ),
          //             ),
          //           ),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               AppText(
          //                 text: 'Gabriel Hirano',
          //                 textStyle: AppTextStyle.paragraphExtrLargeBold,
          //               ),
          //               AppText(
          //                 text: 'Mobile Developer',
          //                 textStyle: AppTextStyle.paragraphMedium,
          //                 textColor: Colors.black38,
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TableCalendar(
              headerStyle: const HeaderStyle(
                  rightChevronVisible: false,
                  leftChevronVisible: false,
                  formatButtonVisible: false,
                  formatButtonDecoration: BoxDecoration(),
                  formatButtonTextStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  titleTextStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  headerPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
              calendarStyle: CalendarStyle(
                cellMargin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                markerDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.black),
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.black,
                ),
              ),
              focusedDay: DateTime.now(),
              firstDay: DateTime(DateTime.now().year, DateTime.now().month - 3,
                  DateTime.now().day),
              lastDay: DateTime(DateTime.now().year, DateTime.now().month + 3,
                  DateTime.now().day),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF333333),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'Today',
                    textStyle: AppTextStyle.headerH3,
                    textColor: appColors.colorBrandPrimaryLight,
                  ),
                  const SizedBox(height: 20),
                  ListTaskProgressWidget()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
