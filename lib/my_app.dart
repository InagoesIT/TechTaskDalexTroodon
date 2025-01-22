import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/styling/global_app_theme.dart';
import 'package:tech_task_dalex_troodon/presentation/widgets/reward_ideas_screen/reward_ideas_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 768),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(
              colorScheme: GlobalAppTheme.lightColorScheme,
              canvasColor: GlobalAppTheme.lightColorScheme.onSurface,
              scaffoldBackgroundColor:
                  GlobalAppTheme.lightColorScheme.onSurface,
            ),
            debugShowCheckedModeBanner: false,
            title: 'Employees Rewards',
            home: const RewardIdeasScreen(),
          );
        });
  }
}
