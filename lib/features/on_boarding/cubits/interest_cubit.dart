import 'package:flutter_bloc/flutter_bloc.dart';

import 'interest_state.dart';

class InterestsCubit extends Cubit<InterestsState> {
  InterestsCubit() : super(InterestsInitialState());

  static InterestsCubit get(context) => BlocProvider.of(context);

    List<int> selectedIndex = [];

  void selectInterest({required int index}) {
    if (selectedIndex.contains(index)) {
      selectedIndex.remove(index);
      emit(ChangeIndexState());
    } else {
      selectedIndex.add(index);
      
      emit(ChangeIndexState());
    }
  }
}
