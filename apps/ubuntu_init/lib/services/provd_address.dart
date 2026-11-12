import 'dart:io';

mixin ProvdAddress {
  static final socketAddress = InternetAddress(
    '/run/gdm3/home/gnome-initial-setup/desktop-provision/init.socket',
    type: InternetAddressType.unix,
  );
  static const port = 443;
}
