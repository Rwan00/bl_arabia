import 'package:bl_arabia/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/fonts_stayles.dart';
import '../../cubits/regester_cubit/register_cubit.dart';
import '../../cubits/regester_cubit/register_state.dart';

class RegisterInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  final TextInputType? textType;
  final bool isPassword;

  const RegisterInputField(
      {required this.title,
      required this.hint,
      this.controller,
      this.widget,
      this.textType,
      this.isPassword = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
      ],
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          bool showPwd = cubit.showPwd;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleStyle,
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  obscureText: isPassword && !showPwd,
                  controller: controller,
                  keyboardType: textType,
                  autofocus: false,
                  style: titleStyle.copyWith(fontSize: 20),
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    suffixIcon: isPassword
                        ? IconButton(
                            onPressed: () {
                              cubit.changePasswordVisibility();
                            },
                            icon: cubit.icon,
                          )
                        : widget,
                    hintText: hint,
                    hintStyle: hintStyle,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                          width: 2,
                        )),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
