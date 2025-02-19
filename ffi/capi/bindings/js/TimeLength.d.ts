// generated by diplomat-tool
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";

// Base enumerator definition
/** See the [Rust documentation for `Time`](https://docs.rs/icu/latest/icu/datetime/options/length/enum.Time.html) for more information.
*/
export class TimeLength {
    constructor(value : TimeLength | string);

    get value() : string;

    get ffiValue() : number;

    static Full : TimeLength;
    static Long : TimeLength;
    static Medium : TimeLength;
    static Short : TimeLength;
}