import 'package:flutter/material.dart';
import 'package:universities_app/modules/universities/universities_screen.dart';
import 'package:universities_app/routes/generated_routes.dart';
import 'package:universities_app/routes/route_constants.dart';

import '../utils/app_constants.dart';
import '../utils/color_constants.dart';
import '../utils/size_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((val) {
      NavigationControl.navigateToRoute(context: context, routeName: RouteConstants.rUniversities, navigationType: NavigationType.pushNamed);
    });

    return Container(
      color: ColorConstants.cWhite,
      child: Align(
        child: Container(
          width: SizeConstants.width / 2,
          height: SizeConstants.width / 2,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstants.cWhite,
          ),
          child: Image.asset(AssetConstants.clientLogo),
        ),
      ),
    );
  }
}
