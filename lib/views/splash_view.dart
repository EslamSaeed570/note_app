
import 'package:flutter/material.dart';
import 'package:notesapp/views/notes_view.dart';

import 'widgets/splash_view_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed( const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const NotesView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}