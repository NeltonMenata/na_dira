import 'package:flutter/material.dart';
import 'package:na_dira/layers/presenters/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'na Dira',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(
          background: Colors.grey.shade900,
          brightness: Brightness.dark,
          seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: Routes.SPLASH,
      routes: Routes.routes(context),
    );
  }
}

