
import 'rz_template_set_1_platform_interface.dart';

class RzTemplateSet_1 {
  Future<String?> getPlatformVersion() {
    return RzTemplateSet_1Platform.instance.getPlatformVersion();
  }
}
