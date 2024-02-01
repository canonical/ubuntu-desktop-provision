import 'dart:io';

mixin ProvdAddress {
  static final socketAddress = InternetAddress(
    '/run/provd/provd.sock',
    type: InternetAddressType.unix,
  );
  static const port = 443;
}
