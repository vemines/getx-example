import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/shared.dart';
import 'app/utils/translations/translations.dart';

void main() {
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends GetView<ThemeController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    controller.updateScreenSize(context.width);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      //
      theme: lightTheme.copyWith(textTheme: controller.textTheme.apply()),
      darkTheme: darkTheme.copyWith(textTheme: controller.textTheme),
      themeMode: ThemeMode.light,
      //
      translations: CustomLanguage(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      defaultTransition: Transition.fade,
      //
    );
  }
}

class ThemeController extends GetxController {
  Rx<MyScreenType> screenType = MyScreenType.small.obs;

  void updateScreenSize(double width) {
    if (width > 1400) {
      screenType.value = MyScreenType.large;
    } else if (width > 600) {
      screenType.value = MyScreenType.medium;
    } else {
      screenType.value = MyScreenType.small;
    }
    Get.put<Rx<MyScreenType>>(screenType);
  }

  TextTheme get textTheme => (screenType.value == MyScreenType.large)
      ? CustomTextTheme.largeTextTheme
      : (screenType.value == MyScreenType.medium)
          ? CustomTextTheme.mediumTextTheme
          : CustomTextTheme.smallTextTheme;
}
