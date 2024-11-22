// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Char> blake3_version() {
    return _blake3_version();
  }

  late final _blake3_versionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'blake3_version');
  late final _blake3_version =
      _blake3_versionPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  void blake3_hasher_init(
    ffi.Pointer<blake3_hasher> self,
  ) {
    return _blake3_hasher_init(
      self,
    );
  }

  late final _blake3_hasher_initPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<blake3_hasher>)>>(
      'blake3_hasher_init');
  late final _blake3_hasher_init = _blake3_hasher_initPtr
      .asFunction<void Function(ffi.Pointer<blake3_hasher>)>();

  void blake3_hasher_init_keyed(
    ffi.Pointer<blake3_hasher> self,
    ffi.Pointer<ffi.Uint8> key,
  ) {
    return _blake3_hasher_init_keyed(
      self,
      key,
    );
  }

  late final _blake3_hasher_init_keyedPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<blake3_hasher>,
              ffi.Pointer<ffi.Uint8>)>>('blake3_hasher_init_keyed');
  late final _blake3_hasher_init_keyed =
      _blake3_hasher_init_keyedPtr.asFunction<
          void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Uint8>)>();

  void blake3_hasher_init_derive_key(
    ffi.Pointer<blake3_hasher> self,
    ffi.Pointer<ffi.Char> context,
  ) {
    return _blake3_hasher_init_derive_key(
      self,
      context,
    );
  }

  late final _blake3_hasher_init_derive_keyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<blake3_hasher>,
              ffi.Pointer<ffi.Char>)>>('blake3_hasher_init_derive_key');
  late final _blake3_hasher_init_derive_key =
      _blake3_hasher_init_derive_keyPtr.asFunction<
          void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Char>)>();

  void blake3_hasher_init_derive_key_raw(
    ffi.Pointer<blake3_hasher> self,
    ffi.Pointer<ffi.Void> context,
    int context_len,
  ) {
    return _blake3_hasher_init_derive_key_raw(
      self,
      context,
      context_len,
    );
  }

  late final _blake3_hasher_init_derive_key_rawPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Void>,
              ffi.Size)>>('blake3_hasher_init_derive_key_raw');
  late final _blake3_hasher_init_derive_key_raw =
      _blake3_hasher_init_derive_key_rawPtr.asFunction<
          void Function(
              ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Void>, int)>();

  void blake3_hasher_update(
    ffi.Pointer<blake3_hasher> self,
    ffi.Pointer<ffi.Void> input,
    int input_len,
  ) {
    return _blake3_hasher_update(
      self,
      input,
      input_len,
    );
  }

  late final _blake3_hasher_updatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Void>,
              ffi.Size)>>('blake3_hasher_update');
  late final _blake3_hasher_update = _blake3_hasher_updatePtr.asFunction<
      void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Void>, int)>();

  void blake3_hasher_finalize(
    ffi.Pointer<blake3_hasher> self,
    ffi.Pointer<ffi.Uint8> out,
    int out_len,
  ) {
    return _blake3_hasher_finalize(
      self,
      out,
      out_len,
    );
  }

  late final _blake3_hasher_finalizePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Uint8>,
              ffi.Size)>>('blake3_hasher_finalize');
  late final _blake3_hasher_finalize = _blake3_hasher_finalizePtr.asFunction<
      void Function(ffi.Pointer<blake3_hasher>, ffi.Pointer<ffi.Uint8>, int)>();

  void blake3_hasher_finalize_seek(
    ffi.Pointer<blake3_hasher> self,
    int seek,
    ffi.Pointer<ffi.Uint8> out,
    int out_len,
  ) {
    return _blake3_hasher_finalize_seek(
      self,
      seek,
      out,
      out_len,
    );
  }

  late final _blake3_hasher_finalize_seekPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<blake3_hasher>,
              ffi.Uint64,
              ffi.Pointer<ffi.Uint8>,
              ffi.Size)>>('blake3_hasher_finalize_seek');
  late final _blake3_hasher_finalize_seek =
      _blake3_hasher_finalize_seekPtr.asFunction<
          void Function(
              ffi.Pointer<blake3_hasher>, int, ffi.Pointer<ffi.Uint8>, int)>();

  void blake3_hasher_reset(
    ffi.Pointer<blake3_hasher> self,
  ) {
    return _blake3_hasher_reset(
      self,
    );
  }

  late final _blake3_hasher_resetPtr = _lookup<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<blake3_hasher>)>>(
      'blake3_hasher_reset');
  late final _blake3_hasher_reset = _blake3_hasher_resetPtr
      .asFunction<void Function(ffi.Pointer<blake3_hasher>)>();
}

typedef ptrdiff_t = ffi.Long;
typedef Dartptrdiff_t = int;

final class max_align_t extends ffi.Opaque {}

typedef __u_char = ffi.UnsignedChar;
typedef Dart__u_char = int;
typedef __u_short = ffi.UnsignedShort;
typedef Dart__u_short = int;
typedef __u_int = ffi.UnsignedInt;
typedef Dart__u_int = int;
typedef __u_long = ffi.UnsignedLong;
typedef Dart__u_long = int;
typedef __int8_t = ffi.SignedChar;
typedef Dart__int8_t = int;
typedef __uint8_t = ffi.UnsignedChar;
typedef Dart__uint8_t = int;
typedef __int16_t = ffi.Short;
typedef Dart__int16_t = int;
typedef __uint16_t = ffi.UnsignedShort;
typedef Dart__uint16_t = int;
typedef __int32_t = ffi.Int;
typedef Dart__int32_t = int;
typedef __uint32_t = ffi.UnsignedInt;
typedef Dart__uint32_t = int;
typedef __int64_t = ffi.Long;
typedef Dart__int64_t = int;
typedef __uint64_t = ffi.UnsignedLong;
typedef Dart__uint64_t = int;
typedef __int_least8_t = __int8_t;
typedef __uint_least8_t = __uint8_t;
typedef __int_least16_t = __int16_t;
typedef __uint_least16_t = __uint16_t;
typedef __int_least32_t = __int32_t;
typedef __uint_least32_t = __uint32_t;
typedef __int_least64_t = __int64_t;
typedef __uint_least64_t = __uint64_t;
typedef __quad_t = ffi.Long;
typedef Dart__quad_t = int;
typedef __u_quad_t = ffi.UnsignedLong;
typedef Dart__u_quad_t = int;
typedef __intmax_t = ffi.Long;
typedef Dart__intmax_t = int;
typedef __uintmax_t = ffi.UnsignedLong;
typedef Dart__uintmax_t = int;
typedef __dev_t = ffi.UnsignedLong;
typedef Dart__dev_t = int;
typedef __uid_t = ffi.UnsignedInt;
typedef Dart__uid_t = int;
typedef __gid_t = ffi.UnsignedInt;
typedef Dart__gid_t = int;
typedef __ino_t = ffi.UnsignedLong;
typedef Dart__ino_t = int;
typedef __ino64_t = ffi.UnsignedLong;
typedef Dart__ino64_t = int;
typedef __mode_t = ffi.UnsignedInt;
typedef Dart__mode_t = int;
typedef __nlink_t = ffi.UnsignedLong;
typedef Dart__nlink_t = int;
typedef __off_t = ffi.Long;
typedef Dart__off_t = int;
typedef __off64_t = ffi.Long;
typedef Dart__off64_t = int;
typedef __pid_t = ffi.Int;
typedef Dart__pid_t = int;

final class __fsid_t extends ffi.Struct {
  @ffi.Array.multi([2])
  external ffi.Array<ffi.Int> __val;
}

typedef __clock_t = ffi.Long;
typedef Dart__clock_t = int;
typedef __rlim_t = ffi.UnsignedLong;
typedef Dart__rlim_t = int;
typedef __rlim64_t = ffi.UnsignedLong;
typedef Dart__rlim64_t = int;
typedef __id_t = ffi.UnsignedInt;
typedef Dart__id_t = int;
typedef __time_t = ffi.Long;
typedef Dart__time_t = int;
typedef __useconds_t = ffi.UnsignedInt;
typedef Dart__useconds_t = int;
typedef __suseconds_t = ffi.Long;
typedef Dart__suseconds_t = int;
typedef __suseconds64_t = ffi.Long;
typedef Dart__suseconds64_t = int;
typedef __daddr_t = ffi.Int;
typedef Dart__daddr_t = int;
typedef __key_t = ffi.Int;
typedef Dart__key_t = int;
typedef __clockid_t = ffi.Int;
typedef Dart__clockid_t = int;
typedef __timer_t = ffi.Pointer<ffi.Void>;
typedef __blksize_t = ffi.Long;
typedef Dart__blksize_t = int;
typedef __blkcnt_t = ffi.Long;
typedef Dart__blkcnt_t = int;
typedef __blkcnt64_t = ffi.Long;
typedef Dart__blkcnt64_t = int;
typedef __fsblkcnt_t = ffi.UnsignedLong;
typedef Dart__fsblkcnt_t = int;
typedef __fsblkcnt64_t = ffi.UnsignedLong;
typedef Dart__fsblkcnt64_t = int;
typedef __fsfilcnt_t = ffi.UnsignedLong;
typedef Dart__fsfilcnt_t = int;
typedef __fsfilcnt64_t = ffi.UnsignedLong;
typedef Dart__fsfilcnt64_t = int;
typedef __fsword_t = ffi.Long;
typedef Dart__fsword_t = int;
typedef __ssize_t = ffi.Long;
typedef Dart__ssize_t = int;
typedef __syscall_slong_t = ffi.Long;
typedef Dart__syscall_slong_t = int;
typedef __syscall_ulong_t = ffi.UnsignedLong;
typedef Dart__syscall_ulong_t = int;
typedef __loff_t = __off64_t;
typedef __caddr_t = ffi.Pointer<ffi.Char>;
typedef __intptr_t = ffi.Long;
typedef Dart__intptr_t = int;
typedef __socklen_t = ffi.UnsignedInt;
typedef Dart__socklen_t = int;
typedef __sig_atomic_t = ffi.Int;
typedef Dart__sig_atomic_t = int;
typedef int_least8_t = __int_least8_t;
typedef int_least16_t = __int_least16_t;
typedef int_least32_t = __int_least32_t;
typedef int_least64_t = __int_least64_t;
typedef uint_least8_t = __uint_least8_t;
typedef uint_least16_t = __uint_least16_t;
typedef uint_least32_t = __uint_least32_t;
typedef uint_least64_t = __uint_least64_t;
typedef int_fast8_t = ffi.SignedChar;
typedef Dartint_fast8_t = int;
typedef int_fast16_t = ffi.Long;
typedef Dartint_fast16_t = int;
typedef int_fast32_t = ffi.Long;
typedef Dartint_fast32_t = int;
typedef int_fast64_t = ffi.Long;
typedef Dartint_fast64_t = int;
typedef uint_fast8_t = ffi.UnsignedChar;
typedef Dartuint_fast8_t = int;
typedef uint_fast16_t = ffi.UnsignedLong;
typedef Dartuint_fast16_t = int;
typedef uint_fast32_t = ffi.UnsignedLong;
typedef Dartuint_fast32_t = int;
typedef uint_fast64_t = ffi.UnsignedLong;
typedef Dartuint_fast64_t = int;
typedef intmax_t = __intmax_t;
typedef uintmax_t = __uintmax_t;

final class blake3_chunk_state extends ffi.Struct {
  @ffi.Array.multi([8])
  external ffi.Array<ffi.Uint32> cv;

  @ffi.Uint64()
  external int chunk_counter;

  @ffi.Array.multi([64])
  external ffi.Array<ffi.Uint8> buf;

  @ffi.Uint8()
  external int buf_len;

  @ffi.Uint8()
  external int blocks_compressed;

  @ffi.Uint8()
  external int flags;
}

final class blake3_hasher extends ffi.Struct {
  @ffi.Array.multi([8])
  external ffi.Array<ffi.Uint32> key;

  external blake3_chunk_state chunk;

  @ffi.Uint8()
  external int cv_stack_len;

  @ffi.Array.multi([1760])
  external ffi.Array<ffi.Uint8> cv_stack;
}

const int NULL = 0;

const int _STDINT_H = 1;

const int _FEATURES_H = 1;

const int _DEFAULT_SOURCE = 1;

const int __GLIBC_USE_ISOC2X = 1;

const int __USE_ISOC11 = 1;

const int __USE_ISOC99 = 1;

const int __USE_ISOC95 = 1;

const int _POSIX_SOURCE = 1;

const int _POSIX_C_SOURCE = 200809;

const int __USE_POSIX = 1;

const int __USE_POSIX2 = 1;

const int __USE_POSIX199309 = 1;

const int __USE_POSIX199506 = 1;

const int __USE_XOPEN2K = 1;

const int __USE_XOPEN2K8 = 1;

const int _ATFILE_SOURCE = 1;

const int __WORDSIZE = 64;

const int __WORDSIZE_TIME64_COMPAT32 = 1;

const int __SYSCALL_WORDSIZE = 64;

const int __TIMESIZE = 64;

const int __USE_TIME_BITS64 = 1;

const int __USE_MISC = 1;

const int __USE_ATFILE = 1;

const int __USE_FORTIFY_LEVEL = 0;

const int __GLIBC_USE_DEPRECATED_GETS = 0;

const int __GLIBC_USE_DEPRECATED_SCANF = 0;

const int __GLIBC_USE_C2X_STRTOL = 1;

const int _STDC_PREDEF_H = 1;

const int __STDC_IEC_559__ = 1;

const int __STDC_IEC_60559_BFP__ = 201404;

const int __STDC_IEC_559_COMPLEX__ = 1;

const int __STDC_IEC_60559_COMPLEX__ = 201404;

const int __STDC_ISO_10646__ = 201706;

const int __GNU_LIBRARY__ = 6;

const int __GLIBC__ = 2;

const int __GLIBC_MINOR__ = 39;

const int _SYS_CDEFS_H = 1;

const int __THROW = 1;

const int __THROWNL = 1;

const int __glibc_c99_flexarr_available = 1;

const int __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0;

const int __HAVE_GENERIC_SELECTION = 0;

const int __GLIBC_USE_LIB_EXT2 = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT = 1;

const int __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 1;

const int __GLIBC_USE_IEC_60559_EXT = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT = 1;

const int __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 1;

const int __GLIBC_USE_IEC_60559_TYPES_EXT = 1;

const int _BITS_TYPES_H = 1;

const int _BITS_TYPESIZES_H = 1;

const int __OFF_T_MATCHES_OFF64_T = 1;

const int __INO_T_MATCHES_INO64_T = 1;

const int __RLIM_T_MATCHES_RLIM64_T = 1;

const int __STATFS_MATCHES_STATFS64 = 1;

const int __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1;

const int __FD_SETSIZE = 1024;

const int _BITS_TIME64_H = 1;

const int _BITS_WCHAR_H = 1;

const int __WCHAR_MAX = 2147483647;

const int __WCHAR_MIN = -2147483648;

const int _BITS_STDINT_INTN_H = 1;

const int _BITS_STDINT_UINTN_H = 1;

const int _BITS_STDINT_LEAST_H = 1;

const int INT8_MIN = -128;

const int INT16_MIN = -32768;

const int INT32_MIN = -2147483648;

const int INT64_MIN = -9223372036854775808;

const int INT8_MAX = 127;

const int INT16_MAX = 32767;

const int INT32_MAX = 2147483647;

const int INT64_MAX = 9223372036854775807;

const int UINT8_MAX = 255;

const int UINT16_MAX = 65535;

const int UINT32_MAX = 4294967295;

const int UINT64_MAX = -1;

const int INT_LEAST8_MIN = -128;

const int INT_LEAST16_MIN = -32768;

const int INT_LEAST32_MIN = -2147483648;

const int INT_LEAST64_MIN = -9223372036854775808;

const int INT_LEAST8_MAX = 127;

const int INT_LEAST16_MAX = 32767;

const int INT_LEAST32_MAX = 2147483647;

const int INT_LEAST64_MAX = 9223372036854775807;

const int UINT_LEAST8_MAX = 255;

const int UINT_LEAST16_MAX = 65535;

const int UINT_LEAST32_MAX = 4294967295;

const int UINT_LEAST64_MAX = -1;

const int INT_FAST8_MIN = -128;

const int INT_FAST16_MIN = -9223372036854775808;

const int INT_FAST32_MIN = -9223372036854775808;

const int INT_FAST64_MIN = -9223372036854775808;

const int INT_FAST8_MAX = 127;

const int INT_FAST16_MAX = 9223372036854775807;

const int INT_FAST32_MAX = 9223372036854775807;

const int INT_FAST64_MAX = 9223372036854775807;

const int UINT_FAST8_MAX = 255;

const int UINT_FAST16_MAX = -1;

const int UINT_FAST32_MAX = -1;

const int UINT_FAST64_MAX = -1;

const int INTPTR_MIN = -9223372036854775808;

const int INTPTR_MAX = 9223372036854775807;

const int UINTPTR_MAX = -1;

const int INTMAX_MIN = -9223372036854775808;

const int INTMAX_MAX = 9223372036854775807;

const int UINTMAX_MAX = -1;

const int PTRDIFF_MIN = -9223372036854775808;

const int PTRDIFF_MAX = 9223372036854775807;

const int SIG_ATOMIC_MIN = -2147483648;

const int SIG_ATOMIC_MAX = 2147483647;

const int SIZE_MAX = -1;

const int WCHAR_MIN = -2147483648;

const int WCHAR_MAX = 2147483647;

const int WINT_MIN = 0;

const int WINT_MAX = 4294967295;

const String BLAKE3_VERSION_STRING = '1.5.4';

const int BLAKE3_KEY_LEN = 32;

const int BLAKE3_OUT_LEN = 32;

const int BLAKE3_BLOCK_LEN = 64;

const int BLAKE3_CHUNK_LEN = 1024;

const int BLAKE3_MAX_DEPTH = 54;
