
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_trainer_first/lang/translation_service.dart';
import 'package:master_trainer_first/routes/app_pages.dart';
import 'package:master_trainer_first/shared/logger/logger_utils.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}

