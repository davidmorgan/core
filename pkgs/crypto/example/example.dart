// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:ffi/ffi.dart';

typedef HashFunc =
    ffi.Void Function(
      ffi.Pointer<Utf8> data,
      ffi.Int32 length,
      ffi.Pointer<ffi.Uint8> output,
    );
typedef Hash =
    void Function(
      ffi.Pointer<Utf8> data,
      int length,
      ffi.Pointer<ffi.Uint8> output,
    );

Future<void> main(List<String> args) async {
  var libraryPath = '${Directory.current.path}/ffi_lib/libffi.so';

  final size = 2000;
  final times = 10000;
  final iterations = 5;

  final buffer = Uint8List(size);
  for (var i = 0; i != size; ++i) {
    buffer[i] = i & 0xff;
  }

  final buffer2 = malloc<ffi.Uint8>(size);
  for (var i = 0; i != size; ++i) {
    buffer2[i] = i & 0xff;
  }

  {
    final dylib = ffi.DynamicLibrary.open(libraryPath);
    final Hash hash =
        dylib.lookup<ffi.NativeFunction<HashFunc>>('md5String2').asFunction();

    final output = malloc<ffi.Uint8>(16);
    for (var i = 0; i != iterations; ++i) {
      final stopwatch = Stopwatch()..start();
      for (var i = 0; i != times; ++i) {
        hash(buffer2.cast(), size, output);
      }
      print(' FFI: ${stopwatch.elapsed.inMilliseconds}ms');
      print(hex.encode(output.asTypedList(16)));
    }
  }

  for (var i = 0; i != iterations; ++i) {
    late String output;
    final stopwatch = Stopwatch()..start();
    for (var i = 0; i != times; ++i) {
      output = md5.convert(buffer).toString();
    }
    print('Dart: ${stopwatch.elapsed.inMilliseconds}ms');
    print(output);
  }
}
