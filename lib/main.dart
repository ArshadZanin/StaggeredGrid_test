import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:researchfin/core/routes/app_pages.dart';
import 'package:researchfin/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "RESEARCHFIN MACHINETEST",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
    ),
  );
}
