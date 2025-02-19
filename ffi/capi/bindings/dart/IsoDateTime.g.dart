// generated by diplomat-tool

part of 'lib.g.dart';

/// An ICU4X DateTime object capable of containing a ISO-8601 date and time.
///
/// See the [Rust documentation for `DateTime`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html) for more information.
final class IsoDateTime implements ffi.Finalizable {
  final ffi.Pointer<ffi.Opaque> _ffi;

  // These are "used" in the sense that they keep dependencies alive
  // ignore: unused_field
  final core.List<Object> _selfEdge;

  // This takes in a list of lifetime edges (including for &self borrows)
  // corresponding to data this may borrow from. These should be flat arrays containing
  // references to objects, and this object will hold on to them to keep them alive and
  // maintain borrow validity.
  IsoDateTime._fromFfi(this._ffi, this._selfEdge) {
    if (_selfEdge.isEmpty) {
      _finalizer.attach(this, _ffi.cast());
    }
  }

  static final _finalizer = ffi.NativeFinalizer(ffi.Native.addressOf(_icu4x_IsoDateTime_destroy_mv1));

  /// Creates a new [`IsoDateTime`] from the specified date and time.
  ///
  /// See the [Rust documentation for `try_new_iso_datetime`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.try_new_iso_datetime) for more information.
  ///
  /// Throws [CalendarError] on failure.
  factory IsoDateTime(int year, int month, int day, int hour, int minute, int second, int nanosecond) {
    final result = _icu4x_IsoDateTime_create_mv1(year, month, day, hour, minute, second, nanosecond);
    if (!result.isOk) {
      throw CalendarError.values[result.union.err];
    }
    return IsoDateTime._fromFfi(result.union.ok, []);
  }

  /// Creates a new [`IsoDateTime`] from an [`IsoDate`] and [`Time`] object
  ///
  /// See the [Rust documentation for `new`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.new) for more information.
  factory IsoDateTime.fromDateAndTime(IsoDate date, Time time) {
    final result = _icu4x_IsoDateTime_from_date_and_time_mv1(date._ffi, time._ffi);
    return IsoDateTime._fromFfi(result, []);
  }

  /// Creates a new [`IsoDateTime`] from an IXDTF string.
  ///
  /// See the [Rust documentation for `try_iso_from_str`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.try_iso_from_str) for more information.
  ///
  /// Throws [CalendarParseError] on failure.
  factory IsoDateTime.fromString(String v) {
    final temp = _FinalizedArena();
    final result = _icu4x_IsoDateTime_from_string_mv1(v._utf8AllocIn(temp.arena));
    if (!result.isOk) {
      throw CalendarParseError.values[result.union.err];
    }
    return IsoDateTime._fromFfi(result.union.ok, []);
  }

  /// Creates a new [`IsoDateTime`] of midnight on January 1, 1970
  ///
  /// See the [Rust documentation for `local_unix_epoch`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.local_unix_epoch) for more information.
  factory IsoDateTime.localUnixEpoch() {
    final result = _icu4x_IsoDateTime_local_unix_epoch_mv1();
    return IsoDateTime._fromFfi(result, []);
  }

  /// Construct from the minutes since the local unix epoch for this date (Jan 1 1970, 00:00)
  ///
  /// See the [Rust documentation for `from_minutes_since_local_unix_epoch`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.from_minutes_since_local_unix_epoch) for more information.
  factory IsoDateTime.fromMinutesSinceLocalUnixEpoch(int minutes) {
    final result = _icu4x_IsoDateTime_from_minutes_since_local_unix_epoch_mv1(minutes);
    return IsoDateTime._fromFfi(result, []);
  }

  /// Gets the date contained in this object
  ///
  /// See the [Rust documentation for `date`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#structfield.date) for more information.
  IsoDate get date {
    final result = _icu4x_IsoDateTime_date_mv1(_ffi);
    return IsoDate._fromFfi(result, []);
  }

  /// Gets the time contained in this object
  ///
  /// See the [Rust documentation for `time`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#structfield.time) for more information.
  Time get time {
    final result = _icu4x_IsoDateTime_time_mv1(_ffi);
    return Time._fromFfi(result, []);
  }

  /// Converts this to an [`DateTime`] capable of being mixed with dates of
  /// other calendars
  ///
  /// See the [Rust documentation for `to_any`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.to_any) for more information.
  DateTime toAny() {
    final result = _icu4x_IsoDateTime_to_any_mv1(_ffi);
    return DateTime._fromFfi(result, []);
  }

  /// Gets the minutes since the local unix epoch for this date (Jan 1 1970, 00:00)
  ///
  /// See the [Rust documentation for `minutes_since_local_unix_epoch`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.minutes_since_local_unix_epoch) for more information.
  int get minutesSinceLocalUnixEpoch {
    final result = _icu4x_IsoDateTime_minutes_since_local_unix_epoch_mv1(_ffi);
    return result;
  }

  /// Convert this datetime to one in a different calendar
  ///
  /// See the [Rust documentation for `to_calendar`](https://docs.rs/icu/latest/icu/calendar/struct.DateTime.html#method.to_calendar) for more information.
  DateTime toCalendar(Calendar calendar) {
    final result = _icu4x_IsoDateTime_to_calendar_mv1(_ffi, calendar._ffi);
    return DateTime._fromFfi(result, []);
  }

  /// Returns the hour in this time
  ///
  /// See the [Rust documentation for `hour`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.hour) for more information.
  int get hour {
    final result = _icu4x_IsoDateTime_hour_mv1(_ffi);
    return result;
  }

  /// Returns the minute in this time
  ///
  /// See the [Rust documentation for `minute`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.minute) for more information.
  int get minute {
    final result = _icu4x_IsoDateTime_minute_mv1(_ffi);
    return result;
  }

  /// Returns the second in this time
  ///
  /// See the [Rust documentation for `second`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.second) for more information.
  int get second {
    final result = _icu4x_IsoDateTime_second_mv1(_ffi);
    return result;
  }

  /// Returns the nanosecond in this time
  ///
  /// See the [Rust documentation for `nanosecond`](https://docs.rs/icu/latest/icu/calendar/struct.Time.html#structfield.nanosecond) for more information.
  int get nanosecond {
    final result = _icu4x_IsoDateTime_nanosecond_mv1(_ffi);
    return result;
  }

  /// Returns the 1-indexed day in the year for this date
  ///
  /// See the [Rust documentation for `day_of_year_info`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.day_of_year_info) for more information.
  int get dayOfYear {
    final result = _icu4x_IsoDateTime_day_of_year_mv1(_ffi);
    return result;
  }

  /// Returns the 1-indexed day in the month for this date
  ///
  /// See the [Rust documentation for `day_of_month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.day_of_month) for more information.
  int get dayOfMonth {
    final result = _icu4x_IsoDateTime_day_of_month_mv1(_ffi);
    return result;
  }

  /// Returns the day in the week for this day
  ///
  /// See the [Rust documentation for `day_of_week`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.day_of_week) for more information.
  IsoWeekday get dayOfWeek {
    final result = _icu4x_IsoDateTime_day_of_week_mv1(_ffi);
    return IsoWeekday.values.firstWhere((v) => v._ffi == result);
  }

  /// Returns the week number in this month, 1-indexed, based on what
  /// is considered the first day of the week (often a locale preference).
  ///
  /// `first_weekday` can be obtained via `first_weekday()` on [`WeekCalculator`]
  ///
  /// See the [Rust documentation for `week_of_month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.week_of_month) for more information.
  int weekOfMonth(IsoWeekday firstWeekday) {
    final result = _icu4x_IsoDateTime_week_of_month_mv1(_ffi, firstWeekday._ffi);
    return result;
  }

  /// Returns the week number in this year, using week data
  ///
  /// See the [Rust documentation for `week_of_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.week_of_year) for more information.
  WeekOf weekOfYear(WeekCalculator calculator) {
    final result = _icu4x_IsoDateTime_week_of_year_mv1(_ffi, calculator._ffi);
    return WeekOf._fromFfi(result);
  }

  /// Returns 1-indexed number of the month of this date in its year
  ///
  /// See the [Rust documentation for `month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.month) for more information.
  int get month {
    final result = _icu4x_IsoDateTime_month_mv1(_ffi);
    return result;
  }

  /// Returns the year number for this date
  ///
  /// See the [Rust documentation for `year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.year) for more information.
  int get year {
    final result = _icu4x_IsoDateTime_year_mv1(_ffi);
    return result;
  }

  /// Returns whether this date is in a leap year
  ///
  /// See the [Rust documentation for `is_in_leap_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.is_in_leap_year) for more information.
  bool get isInLeapYear {
    final result = _icu4x_IsoDateTime_is_in_leap_year_mv1(_ffi);
    return result;
  }

  /// Returns the number of months in the year represented by this date
  ///
  /// See the [Rust documentation for `months_in_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.months_in_year) for more information.
  int get monthsInYear {
    final result = _icu4x_IsoDateTime_months_in_year_mv1(_ffi);
    return result;
  }

  /// Returns the number of days in the month represented by this date
  ///
  /// See the [Rust documentation for `days_in_month`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.days_in_month) for more information.
  int get daysInMonth {
    final result = _icu4x_IsoDateTime_days_in_month_mv1(_ffi);
    return result;
  }

  /// Returns the number of days in the year represented by this date
  ///
  /// See the [Rust documentation for `days_in_year`](https://docs.rs/icu/latest/icu/calendar/struct.Date.html#method.days_in_year) for more information.
  int get daysInYear {
    final result = _icu4x_IsoDateTime_days_in_year_mv1(_ffi);
    return result;
  }
}

@meta.ResourceIdentifier('icu4x_IsoDateTime_destroy_mv1')
@ffi.Native<ffi.Void Function(ffi.Pointer<ffi.Void>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_destroy_mv1')
// ignore: non_constant_identifier_names
external void _icu4x_IsoDateTime_destroy_mv1(ffi.Pointer<ffi.Void> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_create_mv1')
@ffi.Native<_ResultOpaqueInt32 Function(ffi.Int32, ffi.Uint8, ffi.Uint8, ffi.Uint8, ffi.Uint8, ffi.Uint8, ffi.Uint32)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_create_mv1')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _icu4x_IsoDateTime_create_mv1(int year, int month, int day, int hour, int minute, int second, int nanosecond);

@meta.ResourceIdentifier('icu4x_IsoDateTime_from_date_and_time_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_from_date_and_time_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_from_date_and_time_mv1(ffi.Pointer<ffi.Opaque> date, ffi.Pointer<ffi.Opaque> time);

@meta.ResourceIdentifier('icu4x_IsoDateTime_from_string_mv1')
@ffi.Native<_ResultOpaqueInt32 Function(_SliceUtf8)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_from_string_mv1')
// ignore: non_constant_identifier_names
external _ResultOpaqueInt32 _icu4x_IsoDateTime_from_string_mv1(_SliceUtf8 v);

@meta.ResourceIdentifier('icu4x_IsoDateTime_local_unix_epoch_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function()>(isLeaf: true, symbol: 'icu4x_IsoDateTime_local_unix_epoch_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_local_unix_epoch_mv1();

@meta.ResourceIdentifier('icu4x_IsoDateTime_from_minutes_since_local_unix_epoch_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Int32)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_from_minutes_since_local_unix_epoch_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_from_minutes_since_local_unix_epoch_mv1(int minutes);

@meta.ResourceIdentifier('icu4x_IsoDateTime_date_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_date_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_date_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_time_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_time_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_time_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_to_any_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_to_any_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_to_any_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_minutes_since_local_unix_epoch_mv1')
@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_minutes_since_local_unix_epoch_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_minutes_since_local_unix_epoch_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_to_calendar_mv1')
@ffi.Native<ffi.Pointer<ffi.Opaque> Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_to_calendar_mv1')
// ignore: non_constant_identifier_names
external ffi.Pointer<ffi.Opaque> _icu4x_IsoDateTime_to_calendar_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> calendar);

@meta.ResourceIdentifier('icu4x_IsoDateTime_hour_mv1')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_hour_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_hour_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_minute_mv1')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_minute_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_minute_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_second_mv1')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_second_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_second_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_nanosecond_mv1')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_nanosecond_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_nanosecond_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_day_of_year_mv1')
@ffi.Native<ffi.Uint16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_day_of_year_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_day_of_year_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_day_of_month_mv1')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_day_of_month_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_day_of_month_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_day_of_week_mv1')
@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_day_of_week_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_day_of_week_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_week_of_month_mv1')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>, ffi.Int32)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_week_of_month_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_week_of_month_mv1(ffi.Pointer<ffi.Opaque> self, int firstWeekday);

@meta.ResourceIdentifier('icu4x_IsoDateTime_week_of_year_mv1')
@ffi.Native<_WeekOfFfi Function(ffi.Pointer<ffi.Opaque>, ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_week_of_year_mv1')
// ignore: non_constant_identifier_names
external _WeekOfFfi _icu4x_IsoDateTime_week_of_year_mv1(ffi.Pointer<ffi.Opaque> self, ffi.Pointer<ffi.Opaque> calculator);

@meta.ResourceIdentifier('icu4x_IsoDateTime_month_mv1')
@ffi.Native<ffi.Uint32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_month_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_month_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_year_mv1')
@ffi.Native<ffi.Int32 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_year_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_year_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_is_in_leap_year_mv1')
@ffi.Native<ffi.Bool Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_is_in_leap_year_mv1')
// ignore: non_constant_identifier_names
external bool _icu4x_IsoDateTime_is_in_leap_year_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_months_in_year_mv1')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_months_in_year_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_months_in_year_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_days_in_month_mv1')
@ffi.Native<ffi.Uint8 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_days_in_month_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_days_in_month_mv1(ffi.Pointer<ffi.Opaque> self);

@meta.ResourceIdentifier('icu4x_IsoDateTime_days_in_year_mv1')
@ffi.Native<ffi.Uint16 Function(ffi.Pointer<ffi.Opaque>)>(isLeaf: true, symbol: 'icu4x_IsoDateTime_days_in_year_mv1')
// ignore: non_constant_identifier_names
external int _icu4x_IsoDateTime_days_in_year_mv1(ffi.Pointer<ffi.Opaque> self);
