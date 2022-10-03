import 'package:clean_architecture/presentation/common/base/ui/BaseStatefulWidget.dart';
import 'package:clean_architecture/presentation/common/utils/scenarios/Scenario.dart';
import 'package:clean_architecture/presentation/common/utils/window_config.dart';
import 'package:clean_architecture/presentation/features/authentication/authentication_view.dart';
import 'package:flutter/material.dart';

import 'authentication_view_model.dart';

/// [AuthenticationViewModel], [AuthenticationView]
// ignore: must_be_immutable
class AuthenticationWindow extends BaseStatefulWidget {
  AuthenticationWindow({Key? key, WindowConfig? windowConfig})
      : super(key: key, windowConfig: windowConfig);

  static AuthenticationWindow instance = AuthenticationWindow();

  @override
  Widget specifyUseCase({Scenario useCase = Scenario.DEFAULT}) {
    return AuthenticationWindow(
        windowConfig: WindowConfig(
            view: AuthenticationView(), viewModel: AuthenticationViewModel()));
  }
}
