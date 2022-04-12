import 'package:fitness_uncensored/presentation/styles/app_icons.dart';

class IconChoosenComponent {
  const IconChoosenComponent._();

  static iconChosen({required String switchCase}) {
    switch (switchCase) {
      case "bad":
        {
          return AppIcons.bad;
        }
      case "sad":
        {
          return AppIcons.sad;
        }
      case "okay":
        {
          return AppIcons.okay;
        }
      case "good":
        {
          return AppIcons.good;
        }
      case "amazing":
        {
          return AppIcons.amazing;
        }
      default:
        {
          //statements;
        }
        break;
    }
  }
}
