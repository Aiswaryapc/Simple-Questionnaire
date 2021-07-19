import 'package:flutter/material.dart';
import 'package:form/controller/bio_conrtoller.dart';
import 'package:form/controller/question_controller.dart';
import 'package:form/views/quest.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class AnsView extends StatelessWidget {
  AnsView({Key? key}) : super(key: key);
  final questionController = Get.put(QuestionController());
  final bioController = Get.put(BioController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QUESTIONNAIRE"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("hi, ${bioController.userName}"),
            Text("From ${bioController.userLocation}"),
            Container(
              height: 200,
              child: GetX<QuestionController>(
                initState: (_) {},
                builder: (_) {
                  return ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: questionController.savedans.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: [
                              Text(questionController.savedans.entries
                                  .elementAt(index)
                                  .key
                                  .toString()),
                              Text(questionController.savedans.entries
                                  .elementAt(index)
                                  .value
                                  .toString()),
                              Divider()
                            ],
                          ),
                        );
                      });
                },
              ),
            ),
            ElevatedButton(onPressed: () {
              questionController.savedans.clear();
              questionController.index.value=0;
               Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: QuestView(),
                          type: PageTransitionType.leftToRight));
            }, child: Text("Try Again?")),
          ],
        ),
      ),
    );
  }
}
