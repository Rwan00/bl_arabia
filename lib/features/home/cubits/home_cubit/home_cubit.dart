import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int selectedPageIndex = 0;

  void changePages(int index) {
    selectedPageIndex = index;
    emit(ChangePagesState());
  }
}
