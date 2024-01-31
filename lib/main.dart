import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universities_app/modules/splash/splash_screen.dart';
import 'package:universities_app/modules/universities/universities_view_model.dart';
import 'package:universities_app/routes/generated_routes.dart';
import 'modules/utils/size_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const UniversitiesApp());
}

class UniversitiesApp extends StatelessWidget {
  const UniversitiesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConstants(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UniversitiesViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: NavigationControl.generateRoute,
        home: SplashScreen(),
      ),
    );
  }
}
