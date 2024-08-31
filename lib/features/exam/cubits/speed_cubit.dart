import 'package:bl_arabia/features/exam/cubits/speed_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SpeedCubit extends Cubit<SpeedState> {
  SpeedCubit() : super(SpeedInitialState());

  static SpeedCubit get(context) => BlocProvider.of(context);

  String? selectedSpeed;
  var speeds = [
    '0.25x',
    '0.5x',
    '0.75x',
    '1x (Normal)',
    '1.5x',
  ];

  void changeSpeed(
      {String? newValue, required VideoPlayerController controller}) {
    selectedSpeed = newValue;
    if (selectedSpeed == speeds[0]) {
      controller.setPlaybackSpeed(0.25);
    } else if (selectedSpeed == speeds[1]) {
      controller.setPlaybackSpeed(0.5);
    } else if (selectedSpeed == speeds[2]) {
      controller.setPlaybackSpeed(0.75);
    } else if (selectedSpeed == speeds[3]) {
      controller.setPlaybackSpeed(1);
    } else if (selectedSpeed == speeds[4]) {
      controller.setPlaybackSpeed(1.5);
    }
    emit(ChangeSpeedState());
  }
}
