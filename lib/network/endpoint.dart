import 'package:uihure/flavor.dart';

class Endpoint {
  static String get baseUrl {
    switch (flavor) {
      case FlavorEnum.DEV:

        return "https://devops.idooh.co.id:9100";
        // return "https://saleskoo-api.azurewebsites.net";
        break;
      case FlavorEnum.STAG:
        return "https://devops.idooh.co.id:9100";
        // return "https://saleskoo-api.azurewebsites.net";
        break;
      case FlavorEnum.PROD:
        return "https://devops.idooh.co.id:9100";
        // return "https://saleskoo-api.azurewebsites.net";
        break;
    }
  }
}
