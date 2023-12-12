import 'dart:ffi' as ffi;

import 'package:meta/meta.dart';

import 'package:sysmetrics/src/libsysmetrics.g.dart';

LibSysmetrics? _lib;
LibSysmetrics get lib =>
    _lib ??= LibSysmetrics(ffi.DynamicLibrary.open('libsysmetrics.so.1'));

@visibleForTesting
void overrideLibSysmetricsForTesting(LibSysmetrics lib) => _lib = lib;
