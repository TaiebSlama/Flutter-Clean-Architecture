import 'package:clean_architecture/presentation/common/base/viewModel/base_view_model.dart';
import 'package:clean_architecture/presentation/features/authentication/authentication_binding_model.dart';
import 'package:clean_architecture/presentation/features/authentication/authentication_view.dart';
import 'package:clean_architecture/presentation/features/authentication/authentication_window.dart';

/// [AuthenticationWindow], [AuthenticationView]
class AuthenticationViewModel extends BaseViewModel {
  AuthenticationBindingModel bindingModel = AuthenticationBindingModel();

  @override
  Future<void> setUpDataBinding() async {}
}
