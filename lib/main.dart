import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'quran_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(PlanQSupportApp(
    appRouter: AppRouter(),
  ));
}