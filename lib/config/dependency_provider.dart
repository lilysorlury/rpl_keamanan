
import 'package:flutter/material.dart';
import 'dependency_injector.dart';

class DependencyProvider extends InheritedWidget {
  final DependencyInjector dependencies;

  const DependencyProvider({
    super.key,
    required this.dependencies,
    required Widget child,
  }) : super(child: child);

  static DependencyInjector of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<DependencyProvider>();

    if (provider == null) {
      throw FlutterError(
        'DependencyProvider tidak ditemukan di widget tree.',
      );
    }

    return provider.dependencies;
  }

  @override
  bool updateShouldNotify(DependencyProvider oldWidget) {
    return dependencies != oldWidget.dependencies;
  }
}
