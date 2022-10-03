import 'package:clean_architecture/presentation/common/base/injections.dart';
import 'package:clean_architecture/presentation/features/authentication/authentication_window.dart';
import 'package:flutter/material.dart';
import 'package:koin/koin.dart';

late KoinApplication dependency;

void main() async {
  var application = const CleanArchitectureApp();
  dependency = startKoin((app) {
    app.module(modules);
  });
  WidgetsFlutterBinding.ensureInitialized();
  runApp(application);
}

class CleanArchitectureApp extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  const CleanArchitectureApp({Key? key}) : super(key: key);

  static Koin getDependency() {
    return dependency.koin;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        home: AuthenticationWindow.instance.specifyUseCase());
  }
}
