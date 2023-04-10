import '../values/enum.dart';

extension ColorExtension on MyScreenType {
  String get getStringName {
    switch (this) {
      case MyScreenType.large:
        return "Large Screen";
      case MyScreenType.medium:
        return "Medium Screen";
      case MyScreenType.small:
        return "Small Screen";
      default:
        return "Unsupported Screen";
    }
  }
}
