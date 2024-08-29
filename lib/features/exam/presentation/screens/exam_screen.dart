import 'package:bl_arabia/core/colors.dart';
import 'package:bl_arabia/core/fonts_stayles.dart';
import 'package:bl_arabia/shared/widgets/app_btn.dart';
import 'package:flick_video_player/flick_video_player.dart';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:video_player/video_player.dart';

class ExamScreen extends StatefulWidget {
  static String routeName = "Exam Screen";
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  String? selectedSpeed;
  var speeds = [
    '0.25x',
    '0.5x',
    '0.75x',
    '1x (Normal)',
    '1.5x',
  ];

  final double _value = 0;
  FlickManager? flickManager;
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
      ),
    );
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    try {
      flickManager = FlickManager(
        videoPlayerController: _controller,
      );
    } catch (e) {
      // Handle error if initialization fails
      print('Error initializing flickManager: $e');
    }
    void _setPlaybackSpeed(double speed) {
      _controller.setPlaybackSpeed(speed);
    }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.clear),
                  LinearPercentIndicator(
                    isRTL: true,
                    width: width * 0.7,
                    lineHeight: 10,
                    percent: _value,
                    trailing: Text(
                      "${(_value * 10).toInt()}/10",
                      style: titleStyle.copyWith(fontSize: 17),
                    ),
                    barRadius: const Radius.circular(5),
                    backgroundColor: Colors.grey,
                    progressColor: kPrimaryColor,
                  ),
                ],
              ),
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
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f393939),
                      blurRadius: 6,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: flickManager != null
                    ? FlickVideoPlayer(
                        flickManager: flickManager!,
                      )
                    : Container(),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  DropdownButton(
                    hint: Text("السرعة",
                        style: titleStyle.copyWith(fontSize: 20)),
                    value: selectedSpeed,
                    borderRadius: BorderRadius.circular(30),
                    focusColor: kPrimaryColor,
                    icon: Icon(
                      Icons.speed,
                      size: 17,
                      color: kPrimaryColor,
                    ),
                    style: titleStyle.copyWith(fontSize: 20),
                    items: speeds.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedSpeed = newValue;
                        if (selectedSpeed == speeds[0]) {
                          _setPlaybackSpeed(0.25);
                        } else if (selectedSpeed == speeds[1]) {
                          _setPlaybackSpeed(0.5);
                        } else if (selectedSpeed == speeds[2]) {
                          _setPlaybackSpeed(0.75);
                        } else if (selectedSpeed == speeds[3]) {
                          _setPlaybackSpeed(1);
                        } else if (selectedSpeed == speeds[4]) {
                          _setPlaybackSpeed(1.5);
                        }
                      });
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
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "اكتب الجملة التى ذُكرت فى الفيديو",
                style: titleStyle.copyWith(
                  color: kPrimaryColor,
                  fontSize: 25,
                ),
              ),
              Center(
                child: SizedBox(
                  height: height * 0.08,
                  child: TextFormField(
                    controller: controller,
                    style: titleStyle.copyWith(fontSize: 20),
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintStyle: hintStyle,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      hintText: "اكتب هنا",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.15,
              ),
              AppBtn(
                onPressed: () {},
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
