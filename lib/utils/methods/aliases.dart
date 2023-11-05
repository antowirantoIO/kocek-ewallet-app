import 'package:kocek/features/app/models/env_model.dart';
import 'package:kocek/modules/dependency_injection/di.dart';
import 'package:kocek/utils/helpers/logging_helper.dart';
import 'package:kocek/utils/router.dart';

final LoggingHelper logIt = getIt<LoggingHelper>();
final EnvModel env = getIt<EnvModel>();
final AppRouter appRouter = getIt<AppRouter>();
