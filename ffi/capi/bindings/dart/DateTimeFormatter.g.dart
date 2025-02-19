// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X DateFormatter object capable of formatting a [`DateTime`] as a string,
/// using some calendar specified at runtime in the locale.
///
/// See the [Rust documentation for `DateTimeFormatter`](https://docs.rs/icu/latest/icu/datetime/struct.DateTimeFormatter.html) for more information.
final class DateTimeFormatter implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  DateTimeFormatter._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_DateTimeFormatter_destroy_mv1));

  /// Creates a new [`DateTimeFormatter`] from locale data.
  ///
  /// See the [Rust documentation for `try_new`](https://docs.rs/icu/latest/icu/datetime/struct.DateTimeFormatter.html#method.try_new) for more information.
  ///
  /// Throws [Error] on failure.
  factory DateTimeFormatter.withLengths(DataProvider provider, Locale locale, DateLength? dateLength, TimeLength? timeLength) {
    final result = _icu4x_DateTimeFormatter_create_with_lengths_mv1(provider._ffi, locale._ffi, dateLength != null ? _ResultInt32Void.ok(dateLength.index) : _ResultInt32Void.err(), timeLength != null ? _ResultInt32Void.ok(timeLength.index) : _ResultInt32Void.err());
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return DateTimeFormatter._fromFfi(result.union.ok, []);
  }

  /// Formats a [`DateTime`] to a string.
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.DateTimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatDatetime(DateTime value) {
    final write = _Write();
    final result = _icu4x_DateTimeFormatter_format_datetime_mv1(_ffi, value._ffi, write._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return write.finalize();
  }

  /// Formats a [`IsoDateTime`] to a string.
  ///
  /// Will convert to this formatter's calendar first
  ///
  /// See the [Rust documentation for `format`](https://docs.rs/icu/latest/icu/datetime/struct.DateTimeFormatter.html#method.format) for more information.
  ///
  /// Throws [Error] on failure.
  String formatIsoDatetime(IsoDateTime value) {
    final write = _Write();
    final result = _icu4x_DateTimeFormatter_format_iso_datetime_mv1(_ffi, value._ffi, write._ffi);
    if (!result.isOk) {
      throw Error.values.firstWhere((v) => v._ffi == result.union.err);
    }
    return write.finalize();
  }
}

@meta.ResourceIdentifier('icu4x_DateTimeFormatter_destroy_mv1')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_DateTimeFormatter_destroy_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_DateTimeFormatter_destroy_mv1(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('icu4x_DateTimeFormatter_create_with_lengths_mv1')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, _ResultInt32Void, _ResultInt32Void)>(isLeaf: true, symbol: 'icu4x_DateTimeFormatter_create_with_lengths_mv1')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _icu4x_DateTimeFormatter_create_with_lengths_mv1(ffi.Pointer<ffi.Opaque> provider, ffi.Pointer<ffi.Opaque> locale, _ResultInt32Void dateLength, _ResultInt32Void timeLength);

@meta.ResourceIdentifier('icu4x_DateTimeFormatter_format_datetime_mv1')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_DateTimeFormatter_format_datetime_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _icu4x_DateTimeFormatter_format_datetime_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> value, ffi.Pointer<ffi.Opaque> write);

@meta.ResourceIdentifier('icu4x_DateTimeFormatter_format_iso_datetime_mv1')
@ffi.Native<_ResultVoidInt32 Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_DateTimeFormatter_format_iso_datetime_mv1')
// ignore: non_constant_identifier_names
external _ResultVoidInt32 _icu4x_DateTimeFormatter_format_iso_datetime_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> value, ffi.Pointer<ffi.Opaque> write);
