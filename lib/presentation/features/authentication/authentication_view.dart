import 'package:clean_architecture/presentation/common/base/ui/base_state.dart';
import 'package:clean_architecture/presentation/features/authentication/authentication_view_model.dart';
import 'package:flutter/material.dart';

/// [AuthenticationWindow], [AuthenticationView]
class AuthenticationView extends BaseState<AuthenticationViewModel> {
  @override
  Widget buildView() {
    return const SafeArea(
        child: Scaffold(
            appBar: null,
            body: Center(
              child: Text(
                'Hello, Flutter Clean Architecture',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )));
  }
}
