import 'package:flutter/material.dart';
import 'package:na_dira/layers/presenters/routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),
        () => {Navigator.pushReplacementNamed(context, Routes.HOME)});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: [
            Text(
              "na Dira",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              "Faça vendas rápida e grátis!!",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
            ),
            const SizedBox(height: 20,),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
