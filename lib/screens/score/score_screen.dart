import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "10 year survival risk",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                //age 60, PSA 8
                "${100 - (10 * log(0.003 * (pow((60 / 10), 3) - 341.16) + (0.186 * (log(8 + (1 / 100))) + 1.636)))}%",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
              Text(
                "15 year survival risk",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                //age 60, PSA 8
                "${100 - (15 * log(0.003 * (pow((60 / 10), 3) - 341.16) + (0.186 * (log(8 + (1 / 100))) + 1.636)))}%",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kSecondaryColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
