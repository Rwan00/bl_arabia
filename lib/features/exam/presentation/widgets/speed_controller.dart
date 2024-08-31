import 'package:bl_arabia/features/exam/cubits/speed_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/colors.dart';
import '../../../../core/fonts_stayles.dart';
import '../../cubits/speed_cubit.dart';

class SpeedController extends StatelessWidget {
  final VideoPlayerController controller;
  const SpeedController({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => SpeedCubit(),
      child: BlocConsumer<SpeedCubit, SpeedState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SpeedCubit.get(context);
          return Row(
            children: [
              DropdownButton(
                hint: Text("السرعة", style: titleStyle.copyWith(fontSize: 20)),
                value: cubit.selectedSpeed,
                borderRadius: BorderRadius.circular(30),
                focusColor: kPrimaryColor,
                icon: Icon(
                  Icons.speed,
                  size: 17,
                  color: kPrimaryColor,
                ),
                style: titleStyle.copyWith(fontSize: 20),
                items: cubit.speeds.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  cubit.changeSpeed(controller: controller, newValue: newValue);
                },
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400]!,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("إعادة الاستماع ببطء",
                    style: titleStyle.copyWith(fontSize: 20)),
              ),
            ],
          );
        },
      ),
    );
  }
}
