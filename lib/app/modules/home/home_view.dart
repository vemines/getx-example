import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_test/app/utils/util/extension.dart';

import '../../utils/theme/theme_extension.dart';
import '../../utils/values/enum.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    RxBool isLightTheme = (!Get.isDarkMode).obs;
    RxBool isEnLanguage = (Get.locale!.languageCode == "en").obs;
    final CustomColors myColors = Theme.of(context).extension<CustomColors>()!;

    Rx<MyScreenType> screenType = Get.find<Rx<MyScreenType>>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${"changeTheme".tr} ${isLightTheme.value ? 'Dark' : 'Light'} mode',
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 40,
              color: myColors.color1,
            ),
            const Text(
              '--ThemeExtension-- for more color',
            ),
            Container(
              width: 200,
              height: 40,
              color: myColors.color2,
            ),
            Switch(
              value: isLightTheme.value,
              onChanged: (val) {
                isLightTheme.value = val;
                Get.changeThemeMode(
                  isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
                );
              },
            ),
            Text(
              '${"changeLanguage".tr} ${isEnLanguage.value ? 'Tiếng Việt' : 'English'}',
            ),
            Switch(
              value: isEnLanguage.value,
              onChanged: (val) {
                isEnLanguage.value = val;
                Get.updateLocale(
                  isEnLanguage.value
                      ? const Locale('en', 'US')
                      : const Locale('vi', 'VN'),
                );
              },
            ),
            Text(
              '${"changeLanguage".tr} ${isEnLanguage.value ? 'Tiếng Việt' : 'English'}',
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              '${"testFontSize".tr} : ${screenType.value.getStringName}',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
