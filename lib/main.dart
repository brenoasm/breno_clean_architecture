import 'package:architecture_example/app_module.dart';
import 'package:architecture_example/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Localization.setTranslationDirectories([
    'assets/lang',
  ]);

  await Localization.configuration();

  runApp(
    ModularApp(
      module: AppModule(),
      child: AppWidget(),
    ),
  );
}
