// generated by diplomat-tool
import type { DataProvider } from "./DataProvider"
import type { Date } from "./Date"
import type { DateLength } from "./DateLength"
import type { DateTime } from "./DateTime"
import type { Error } from "./Error"
import type { IsoDate } from "./IsoDate"
import type { IsoDateTime } from "./IsoDateTime"
import type { Locale } from "./Locale"
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** An ICU4X DateFormatter object capable of formatting a [`Date`] as a string,
*using some calendar specified at runtime in the locale.
*
*See the [Rust documentation for `DateFormatter`](https://docs.rs/icu/latest/icu/datetime/struct.DateFormatter.html) for more information.
*/
export class DateFormatter {
    

    get ffiValue(): pointer;

    static createWithLength(provider: DataProvider, locale: Locale, dateLength: DateLength): DateFormatter;

    formatDate(value: Date): string;

    formatIsoDate(value: IsoDate): string;

    formatDatetime(value: DateTime): string;

    formatIsoDatetime(value: IsoDateTime): string;
}