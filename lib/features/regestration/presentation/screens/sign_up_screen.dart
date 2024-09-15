import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';

import 'package:bl_arabia/features/exam/presentation/widgets/progress_widget.dart';
import 'package:bl_arabia/features/regestration/cubits/regester_cubit/register_cubit.dart';
import 'package:bl_arabia/features/regestration/data/imgs.dart';
import 'package:bl_arabia/features/regestration/data/sign_questions.dart';
import 'package:bl_arabia/features/regestration/presentation/screens/register_done_screen.dart';
import 'package:bl_arabia/features/regestration/presentation/widgets/register_input_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/widgets/app_btn.dart';
import '../../cubits/regester_cubit/register_state.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "Sign up Screen";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          double width = MediaQuery.of(context).size.width;
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.06,
                ),
                ProgressWidget(
                  value: cubit.questionIndex,
                  isRegister: true,
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: RegisterInputField(
                    hint: kQuestions[(cubit.questionIndex * 10).toInt()]["H"],
                    title: kQuestions[(cubit.questionIndex * 10).toInt()]["Q"],
                    controller: cubit.answerController,
                    isPassword:
                        (cubit.questionIndex * 10).toInt() == 3 ? true : false,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                (cubit.questionIndex * 10).toInt() < kQuestions.length - 1
                    ? Center(
                        child: AppBtn(
                          onPressed: () => cubit.answerQuestion(),
                          label: "المتابعة",
                          enabled: cubit.answerController.text.isEmpty
                              ? false
                              : true,
                        ),
                      )
                    : Center(
                        child: AppBtn(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RegisterDoneScreen.routeName);
                          },
                          label: "إنشاء حساب",
                          enabled: cubit.answerController.text.isEmpty
                              ? false
                              : true,
                        ),
                      ),
                const Spacer(),
                Center(
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kPrimaryColor),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.06,
                        ),
                        Image.asset(
                          kGoogle,
                          width: width * 0.06,
                        ),
                        SizedBox(
                          width: width * 0.03,
                        ),
                        Text(
                          "التسجيل بحساب جوجل",
                          style: titleStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
