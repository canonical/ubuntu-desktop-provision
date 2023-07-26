import 'package:flutter/widgets.dart';
import 'package:wizard_router/wizard_router.dart';

typedef WizardPredicate = bool Function(String name);

class WizardBuilder extends StatefulWidget {
  const WizardBuilder({
    super.key,
    this.initialRoute,
    required this.routes,
    this.predicate,
    this.observers = const [],
    this.userData,
  });

  final String? initialRoute;
  final Map<String, WizardRoute> routes;
  final WizardPredicate? predicate;
  final List<NavigatorObserver> observers;
  final Object? userData;

  @override
  State<WizardBuilder> createState() => _WizardBuilderState();
}

class _WizardBuilderState extends State<WizardBuilder> {
  late final WizardController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WizardController(
      initialRoute: widget.initialRoute,
      routes: widget.routes.map((name, route) {
        return MapEntry(
          name,
          WizardRoute(
            builder: route.builder,
            onNext: route.onNext,
            onReplace: route.onReplace,
            onBack: route.onBack,
            onLoad: (settings) async {
              return (widget.predicate?.call(name) ?? true) &&
                  (await route.onLoad?.call(settings) ?? true);
            },
            userData: route.userData,
          ),
        );
      }),
    )..replace();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wizard(
      controller: _controller,
      observers: widget.observers,
      userData: widget.userData,
    );
  }
}
