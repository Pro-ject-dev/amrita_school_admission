import 'dart:ui'; // For PlatformDispatcher
import 'package:amrita_vidyalyam_admission/constants/app_strings.dart';
import 'package:amrita_vidyalyam_admission/core/services/connectivity_service.dart';
import 'package:amrita_vidyalyam_admission/core/shared/widgets/custom_error_screen.dart';
import 'package:amrita_vidyalyam_admission/core/shared/widgets/no_internet_widget.dart';
import 'package:amrita_vidyalyam_admission/router/app_router.dart';
import 'package:amrita_vidyalyam_admission/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return CustomErrorScreen(errorDetails: details);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    return true;
  };

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: AppStrings.appName,
          theme: AppTheme.lightTheme,
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return Stack(
              children: [
                if (child != null) child,
                Consumer(
                  builder: (context, ref, _) {
                    final connectivityAsync = ref.watch(connectivityStatusProvider);
                    return connectivityAsync.when(
                      data: (isOnline) {
                        if (!isOnline) {
                          return const Positioned.fill(
                            child: NoInternetWidget(),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                      error: (_, __) => const SizedBox.shrink(),
                      loading: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
