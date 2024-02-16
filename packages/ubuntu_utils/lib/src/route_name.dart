mixin RouteName on Enum {
  String get route => '/$name';
}
