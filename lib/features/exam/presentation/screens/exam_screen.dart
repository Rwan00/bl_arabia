
import 'package:bl_arabia/features/exam/presentation/widgets/answer_input_widget.dart';
import 'package:bl_arabia/features/exam/presentation/widgets/progress_widget.dart';
import 'package:bl_arabia/features/exam/presentation/widgets/check_answer_bottomsheet.dart';
import 'package:bl_arabia/features/exam/presentation/widgets/show_video_widget.dart';
import 'package:bl_arabia/features/exam/presentation/widgets/speed_controller.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';

import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class ExamScreen extends StatelessWidget {
  static String routeName = "Exam Screen";
  const ExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    VideoPlayerController videoController = VideoPlayerController.networkUrl(
      Uri.parse(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              const ProgressWidget(),
              SizedBox(
                height: height * 0.04,
              ),
              AppBtn(
                onPressed: () {},
                label: "تحديد المستوى",
                enabled: false,
              ),
              SizedBox(
                height: height * 0.06,
              ),
              ShowVideoWidget(
                controller: videoController,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SpeedController(
                controller: videoController,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              AnswerInputWidget(
                controller: controller,
              ),
              SizedBox(
                height: height * 0.15,
              ),
              AppBtn(
                onPressed: () {
                  showModalBottomSheet(
                   
                    
                      context: context,
                      builder: (_) {
                        return CheckAnswerBottomSheet(isRight: false,);
                      });
                },
                label: "حسنا",
                enabled: controller.text.isEmpty ? false : true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextEditingController controller = TextEditingController();
