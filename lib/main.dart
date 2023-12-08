import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'SplashScreen/provider/splashprovider.dart';
import 'core/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, DeviceType deviceType) {
      print(orientation);
      return MultiProvider(
        providers: [
          ListenableProvider<SplashProvider>(create: (_) => SplashProvider()),
        ],
        child: MaterialApp(
          title: "Educare",
          initialRoute: AppRoutes.splash,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ),
      );
    });
  }
}
