import 'package:get_it/get_it.dart';
import 'package:minimaltodoapp/core/theme/app_colors.dart';

final getIt = GetIt.instance;
mixin DependencyInjection {
  static Future<void> init() async {
    //! Commons
    getIt.registerSingleton<IAppColors>(AppColors());
  }
}
