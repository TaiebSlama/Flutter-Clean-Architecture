enum Scenario { DEFAULT }

extension ScenarioExtension on Scenario {
  static const String scenarios_default_route_name = "default";

  String get routeName {
    switch (this) {
      case Scenario.DEFAULT:
        return scenarios_default_route_name;
      default:
        return "";
    }
  }
}
