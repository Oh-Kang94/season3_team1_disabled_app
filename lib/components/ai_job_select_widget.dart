import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:season3_team1_mainproject/components/ai_job_select_ganho_widget.dart';
import 'package:season3_team1_mainproject/components/ai_job_select_samu_widget.dart';
import 'package:season3_team1_mainproject/components/ai_job_select_service_widget.dart';
import 'package:season3_team1_mainproject/components/ai_job_select_jenmun_widget.dart';
import 'package:season3_team1_mainproject/vm/ai_test_controller.dart';

class AiJobSelectWidget extends StatefulWidget {
  const AiJobSelectWidget({super.key});

  @override
  State<AiJobSelectWidget> createState() => _AiJobSelectWidgetState();
}

class _AiJobSelectWidgetState extends State<AiJobSelectWidget> {
  // Property

  // final AiTestController controller = Get.put(AiTestController());  // 액션 없으면 어사인 부분만 안해주면됨
  final AiTestController controller = Get.put(AiTestController());

  late bool buttonStatus1;
  late bool buttonStatus2;
  late bool buttonStatus3;

  @override
  void initState() {
    super.initState();
    buttonStatus1 = false;
    buttonStatus2 = false;
    buttonStatus3 = false;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AiTestController>(
      builder: (controller) {
        return Center(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {});
                          controller.selectJob = '';
                          buttonStatus1 = true;
                          buttonStatus2 = false;
                          buttonStatus3 = false;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonStatus1 == true
                              ? Colors.grey
                              : Theme.of(context).cardColor,
                        ),
                        child: const Text('경영·행정·사무직'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {});
                          controller.selectJob = '';
                          buttonStatus1 = false;
                          buttonStatus2 = true;
                          buttonStatus3 = false;
                        },
                        style: ElevatedButton.styleFrom(
                          //
                          backgroundColor: buttonStatus2 == true
                              ? Colors.grey
                              : Theme.of(context).cardColor,
                        ),
                        child: const Text('서비스직'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {});
                          controller.selectJob = '';
                          buttonStatus1 = false;
                          buttonStatus2 = false;
                          buttonStatus3 = true;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonStatus3 == true
                              ? Colors.grey
                              : Theme.of(context).cardColor,
                        ),
                        child: const Text('기타직종'),
                      ),
                    ),
                  ],
                ),
              ),

              // 경영 행정 사무직 클릭시
              Visibility(
                visible: buttonStatus1,
                child: SizedBox(
                  height: 200,
                  width: 300,
                  child: Column(
                    children: [
                      const Text(".\n.\n"),
                      ElevatedButton(
                        onPressed: () {
                          controller.selectJob = '경영·행정·사무직';
                          controller.jobSelectStatus = true;
                          
                          print(controller.selectJob);
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.selectJob == '경영·행정·사무직'
                              ? Colors.grey
                              : Theme.of(context).cardColor,
                        ),
                        child: const Text('경영·행정·사무직'),
                      ),
                    ],
                  ),
                ),
              ),

              // 서비스직 클릭시
              Visibility(
                visible: buttonStatus2,
                child: Column(
                  children: [
                    const Text(".\n.\n"),
                    ElevatedButton(
                      onPressed: () {
                        controller.selectJob = '서비스 및 판매 관련 직군';
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.selectJob == '서비스 및 판매 관련 직군'
                                ? Colors.grey
                                : Theme.of(context).cardColor,
                      ),
                      child: const Text('서비스 및 판매 관련 직군'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.selectJob = '청소 및 기타 개인서비스직';
                        print(controller.selectJob);
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.selectJob == '청소 및 기타 개인서비스직'
                                ? Colors.grey
                                : Theme.of(context).cardColor,
                      ),
                      child: const Text('청소 및 기타 개인서비스직'),
                    ),
                  ],
                ),
              ),

              // 서비스 - 서비스 및 판매관련 직군 클릭시
              Visibility(
                visible: controller.selectJob == '서비스 및 판매 관련 직군',
                child: const AIJobSelectServiceWidget(),
              ),

              // 기타직종 클릭시
              Visibility(
                visible: buttonStatus3,
                child: Column(
                  children: [
                    const Text(".\n.\n"),
                    ElevatedButton(
                      onPressed: () {
                        controller.selectJob = '간호·보건 및 돌봄 서비스 관련 직군';
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.selectJob == '간호·보건 및 돌봄 서비스 관련 직군'
                                ? Colors.grey
                                : Theme.of(context).cardColor,
                      ),
                      child: const Text('간호·보건 및 돌봄 서비스 관련 직군'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.selectJob = '전문·생산 및 정비 관련 직군';
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            controller.selectJob == '전문·생산 및 정비 관련 직군'
                                ? Colors.grey
                                : Theme.of(context).cardColor,
                      ),
                      child: const Text('전문·생산 및 정비 관련 직군'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        controller.selectJob = '제조 단순직';
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.selectJob == '제조 단순직'
                            ? Colors.grey
                            : Theme.of(context).cardColor,
                      ),
                      child: const Text('제조 단순직'),
                    ),
                  ],
                ),
              ),

              // 기타직종 - 간호·보건 및 돌봄 서비스 관련 직군 클릭시
              Visibility(
                visible: controller.selectJob == '간호·보건 및 돌봄 서비스 관련 직군',
                child: const AiJobSelctGanhoWidget(),
              ),

              // 기타직종 - 전문·생산 및 정비 관련 직군 클릭시
              Visibility(
                visible:
                    buttonStatus3 && controller.selectJob == '전문·생산 및 정비 관련 직군',
                child: const AiJobSelectJenmunWidget(),
              ),
              // Visibility(
              //   visible:
              //       controller.selectJob == '경영·행정·사무직',
              //   child: const AiJobSelectSamuWidget(),
              // ),
            ],
          ),
        );
      },
    );
  }
} // End
