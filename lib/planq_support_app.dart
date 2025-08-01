import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class PlanQSupportApp extends StatelessWidget {
  final AppRouter appRouter;

  const PlanQSupportApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900), // حجم شاشة لابتوب
      minTextAdapt: true,
      splitScreenMode: true, // مهم لو هتشتغلي على تابلت أو شاشات منقسمة
      builder: (context, child) {
        return MaterialApp(
          title: 'PlanQSupportApp',
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.HomeScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
