import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'features/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translation',
      fallbackLocale: Locale('en'),

      child: MyApp(appRouter: AppRouter()),
    ),
  );
}
