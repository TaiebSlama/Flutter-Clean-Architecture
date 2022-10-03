import 'package:clean_architecture/presentation/common/base/ui/base_state.dart';
import 'package:clean_architecture/presentation/common/base/viewModel/base_view_model.dart';

class WindowConfig {
  WindowConfig({required this.view, required this.viewModel});

  BaseState view;
  BaseViewModel viewModel;
}
