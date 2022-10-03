import 'package:clean_architecture/presentation/app/clean_architecture_app.dart';
import 'package:clean_architecture/presentation/common/base/viewModel/base_view_model.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/resource/app_colors.dart';

abstract class BaseState<VM extends BaseViewModel>
    extends State<StatefulWidget> {
  late VM viewModel;

  BuildContext? _dialogContext;

  @override
  void initState() {
    super.initState();
    if (WidgetsBinding.instance != null) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        viewModel.setUpDataBinding();
      });
    }
  }

  void closeKeyboard() {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void navigateBack() {
    Navigator.of(context).pop();
  }

  void showLoaderDialog() async {
    await showDialog(
        barrierDismissible: false,
        context: CleanArchitectureApp.navigatorKey.currentContext!,
        builder: (BuildContext context) {
          _dialogContext = context;
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CircularProgressIndicator(),
              ]);
        });
  }

  void hideLoaderDialog() {
    if (_dialogContext != null) Navigator.pop(_dialogContext!);
    _dialogContext = null;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: null,
        child: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.white,
            child: GestureDetector(
                onTap: () => closeKeyboard(),
                child: Stack(children: [buildView()]))));
  }

  Widget buildView();

  Future<void> navigateTo(Widget destination) async {
    return Navigator.push(CleanArchitectureApp.navigatorKey.currentContext!,
        MaterialPageRoute(builder: (context) => destination)).then((value) {
      viewModel.handleRefreshWhenGoBack();
    });
  }

  void finishAndNavigateTo(Widget destination) async {
    Navigator.pushAndRemoveUntil(
      CleanArchitectureApp.navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => destination),
      (Route<dynamic> route) => false,
    );
  }
}
