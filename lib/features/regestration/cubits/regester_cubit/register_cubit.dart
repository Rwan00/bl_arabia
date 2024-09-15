import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  double questionIndex = 0;

  TextEditingController answerController = TextEditingController();

  void answerQuestion() {
    questionIndex += 0.1;
    answerController.clear();
    emit(NextQuestionState());
  }

  Widget icon = const Icon(Icons.remove_red_eye_outlined);
  bool showPwd = false;

  void changePasswordVisibility() {
    showPwd = !showPwd;
    icon = showPwd
        ? const Icon(Icons.visibility_off_outlined)
        : const Icon(Icons.visibility_outlined);
    emit(AppChangePasswordVisibility());
  }
}
