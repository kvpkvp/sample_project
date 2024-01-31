import 'package:flutter/material.dart';
import 'package:universities_app/modules/universities/universities_screen.dart';
import 'package:universities_app/routes/route_constants.dart';
import '../modules/splash/splash_screen.dart';

class NavigationControl {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    String routeName = routeSettings.name.toString();
    switch (routeName) {
      case RouteConstants.rSplash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case RouteConstants.rUniversities:
        return MaterialPageRoute(builder: (context) => UniversitiesScreen());
      default:
        return _routeNotFound();
    }
  }

  static Route<dynamic> _routeNotFound() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        body: Center(
          child: Text("TextConstants.sPageNotFound"),
        ),
      );
    });
  }

  ///Navigation types with arguments(passing data to next page)
  static navigateToRoute(
      {required BuildContext context,
      required String routeName,
      required NavigationType navigationType,
      dynamic args}) {
    switch (navigationType) {
      case NavigationType.pushNamed:
        return Navigator.pushNamed(context, routeName, arguments: args);
      case NavigationType.pushReplacementNamed:
        return Navigator.pushReplacementNamed(context, routeName,
            arguments: args);
      case NavigationType.pushNamedAndRemoveUntil:
        return Navigator.pushNamedAndRemoveUntil(
            context, routeName, arguments: args, (route) => false);
      default:
        return Navigator.pushNamed(context, routeName);
    }
  }

  static navigateLandingPage(BuildContext context) {
    navigateToRoute(
        context: context,
        routeName: RouteConstants.rSplash,
        navigationType: NavigationType.pushNamedAndRemoveUntil);
  }
}

enum NavigationType {
  pushNamed,
  pushReplacementNamed,
  pushNamedAndRemoveUntil,
}
