import 'package:flutter/material.dart';
import '../utils/color_constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: CircularProgressIndicator(color: ColorConstants.cBlack,),
      ),
    );
  }
}
