import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/streak/presentation/screens/streak_done.dart';
import 'package:bl_arabia/features/streak/presentation/widgets/days_streak.dart';
import 'package:bl_arabia/features/streak/presentation/widgets/streak_man.dart';

import 'package:flutter/material.dart';

import '../../../../shared/widgets/app_btn.dart';

class StreakScreen extends StatefulWidget {
  static String routeName = "Streak Screen";
  const StreakScreen({super.key});

  @override
  State<StreakScreen> createState() => _StreakScreenState();
}

class _StreakScreenState extends State<StreakScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            const StreakMan(),
            Text(
              "يوم حماسة !",
              style: splashTitle,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.25,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const DaysStreak(),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "يطيل التدريب اليومى حماستك، ولكن تفويت يوم يعيدك الى نقطه الصفر!",
                      style: titleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            AppBtn(
              onPressed: () {
                 Navigator.of(context).pushNamed(StreakDone.routeName);
              },
              label: "أكمل الأن",
            ),
            SizedBox(
              height: height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}




/* import 'package:flutter/material.dart';

class StreakScreen extends StatelessWidget {
  static String routeName = "Streak Screen";
  @override
  Widget build(BuildContext context) {
    // A list of items to display in a zigzag pattern
    final items = List.generate(6, (index) => 'Item ${index + 1}');

    return Row(
      children: [
        Text("feokf"),
        SizedBox(
          width: 190,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              // Alternate the alignment based on the index
              bool isLeft = index % 2 == 0;

              return Align(
                alignment:
                    isLeft ? Alignment.centerLeft : Alignment.centerRight,
                child: buildZigzagBox(Colors.blue, items[index]),
              );
            },
          ),
        ),
      ],
    );
  }

  // Widget to build a box for the zigzag pattern
  Widget buildZigzagBox(Color color, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10), // Adds vertical spacing
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
 */