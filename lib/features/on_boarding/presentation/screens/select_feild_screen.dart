import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/features/exam/presentation/screens/welcome_exam_screen.dart';
import 'package:bl_arabia/features/on_boarding/cubits/interest_cubit.dart';
import 'package:bl_arabia/features/on_boarding/cubits/interest_state.dart';
import 'package:bl_arabia/features/on_boarding/data/consts.dart';
import 'package:bl_arabia/features/on_boarding/data/imgs.dart';
import 'package:bl_arabia/features/on_boarding/presentation/widgets/custom_field.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectFeildScreen extends StatelessWidget {
  static String routeName = "Select Field Screen";
  const SelectFeildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => InterestsCubit(),
      child: BlocConsumer<InterestsCubit, InterestsState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = InterestsCubit.get(context);
          return Scaffold(
            backgroundColor: kCafeColor,
            body: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Image.asset(
                    kSelect,
                    width: width * 0.6,
                  ),
                  Text(
                    'حدد الفئات لك  ترغب فى الدراسة !',
                    style: titleStyle.copyWith(fontSize: 40),
                  ),
                  Wrap(
                    children: List.generate(
                      kFields.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            cubit.selectInterest(
                              index: index,
                            );
                          },
                          child: CustomField(
                              img: kFields[index]["img"],
                              title: kFields[index]["title"],
                              isTapped: cubit.selectedIndex.contains(index)
                                  ? true
                                  : false),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  AppBtn(
                    onPressed: () {
                      Navigator.pushNamed(context, WelcomeExamScreen.routeName);
                    },
                    label: "حسنا",
                    enabled: cubit.selectedIndex.isEmpty ? false : true,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
