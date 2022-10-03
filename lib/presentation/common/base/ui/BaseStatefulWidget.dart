import 'package:clean_architecture/presentation/common/base/ui/base_state.dart';
import 'package:clean_architecture/presentation/common/utils/scenarios/Scenario.dart';
import 'package:clean_architecture/presentation/common/utils/window_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
abstract class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget({Key? key, this.windowConfig}) : super(key: key);
  WindowConfig? windowConfig;

  @override
  BaseState createState() {
    windowConfig!.view.viewModel = windowConfig!.viewModel;
    windowConfig!.viewModel.view = windowConfig!.view;
    return windowConfig!.view;
  }

  Widget specifyUseCase({Scenario useCase = Scenario.DEFAULT});
}
