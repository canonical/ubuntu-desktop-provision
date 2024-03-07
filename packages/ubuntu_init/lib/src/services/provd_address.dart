import 'dart:io';

mixin ProvdAddress {
  static final socketAddress = InternetAddress(
    '/run/gnome-initial-setup/desktop-provision/init.socket',
    type: InternetAddressType.unix,
  );
  static const port = 443;
}
