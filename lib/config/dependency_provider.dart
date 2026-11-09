import 'package:flutter/material.dart';

import 'dependency_injector.dart';

class DependencyProvider extends InheritedWidget {
  final DependencyInjector dependencies;

  const DependencyProvider({
    super.key,
    required this.dependencies,
    required super.child,
  });

  static DependencyInjector of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<DependencyProvider>();

    assert(provider != null, 'DependencyProvider tidak ditemukan');

    return provider!.dependencies;
  }

  @override
  bool updateShouldNotify(DependencyProvider oldWidget) {
    return dependencies != oldWidget.dependencies;
  }
}
