//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <responsive_builder_kit/responsive_builder_kit_plugin_c_api.h>
#include <rz_template_set_1/rz_template_set_1_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  ResponsiveBuilderKitPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("ResponsiveBuilderKitPluginCApi"));
  RzTemplateSet_1PluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("RzTemplateSet_1PluginCApi"));
}
