import 'package:flutter/material.dart';

import '../../data/imgs.dart';
import 'level_widget.dart';

class BuildLevels extends StatelessWidget {
  const BuildLevels({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    List<Color> colorList = List.generate(
        Colors.primaries.length, (index) => Colors.primaries[index]);
    return Row(
      children: [
        Image.asset(
          kPersonLevel,
          width: width * 0.5,
        ),
        Expanded(
          child: ListView.builder(
            
            itemCount: colorList.length,
            itemBuilder: (context, index) {
              bool isLeft = index % 2 == 0;

              return Align(
                alignment:
                    isLeft ? Alignment.centerLeft : Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 8),
                  child: LevelWidget(color: colorList[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
