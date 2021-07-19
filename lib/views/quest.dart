import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:form/controller/question_controller.dart';
import 'package:form/views/answer_view.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class QuestView extends StatefulWidget {
  QuestView({Key? key}) : super(key: key);

  @override
  _QuestViewState createState() => _QuestViewState();
}

class _QuestViewState extends State<QuestView> {
  final questionController = Get.put(QuestionController());

  var questions = {
    "Q1": ["a1", "b1", "c1", "d1"],
    "Q2": ["a2", "b2", "c2", "d2"],
    "Q3": ["a3", "b3", "c3", "d3"]
  };
  var _response = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QUESTIONNAIRE"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  GetX<QuestionController>(
                    initState: (_) {},
                    builder: (_) {
                      return Text(questions.keys
                          .elementAt(questionController.index.toInt()));
                    },
                  ),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(20),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 / 1,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: questions[questions.keys
                                .elementAt(questionController.index.toInt())]!
                            .length,
                        itemBuilder: (BuildContext ctx, index) {
                          return GetX<QuestionController>(
                            initState: (_) {},
                            builder: (_) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: questionController.savedans[
                                                questions.keys.elementAt(
                                                    questionController.index
                                                        .toInt())] ==
                                            questions[questions.keys.elementAt(questionController.index.toInt())]![
                                                index]
                                        ? Colors.purple
                                        : Colors.red,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 20),
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  print(
                                      "button is ${questions[questions.keys.elementAt(questionController.index.toInt())]![index]}");
                                  _response[questions.keys.elementAt(
                                          questionController.index.toInt())] =
                                      questions[questions.keys.elementAt(
                                          questionController.index
                                              .toInt())]![index];
                                  questionController.savedans.addAll(_response);
                                },
                                child: Text(questions[questions.keys.elementAt(
                                    questionController.index.toInt())]![index]),
                              );
                            },
                          );
                        }),
                  ),
                ],
              ),
            ),
            Container(
              child: GetX<QuestionController>(
                initState: (_) {},
                builder: (_) {
                  return Opacity(
                    opacity: questionController.savedans[questions.keys
                                .elementAt(questionController.index.toInt())] ==
                            null
                        ? 0
                        : 1,
                    child: ElevatedButton(
                        onPressed: () {
                          if (questionController.savedans[questions.keys
                                  .elementAt(
                                      questionController.index.toInt())] !=
                              null) {
                            if (questionController.index.toInt() < 2) {
                              questionController.increment();
                              print(_response);
                            } else {
                              print("move");
                              Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                      child: AnsView(),
                                      type: PageTransitionType
                                          .leftToRightWithFade));
                            }
                          }
                        },
                        child: questionController.index.toInt() < 2
                            ? Text("Next")
                            : Text("Finish")),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
