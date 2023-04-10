import 'vi.dart';
import 'en.dart';
import 'package:get/get.dart';

class CustomLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnUSLanguage.language,
        'vi_VN': ViVNLanguage.language,
      };
}
