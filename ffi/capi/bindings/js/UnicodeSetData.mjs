// generated by diplomat-tool
import { DataError } from "./DataError.mjs"
import { DataProvider } from "./DataProvider.mjs"
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";


/** An ICU4X Unicode Set Property object, capable of querying whether a code point is contained in a set based on a Unicode property.
*
*See the [Rust documentation for `properties`](https://docs.rs/icu/latest/icu/properties/index.html) for more information.
*
*See the [Rust documentation for `UnicodeSetData`](https://docs.rs/icu/latest/icu/properties/sets/struct.UnicodeSetData.html) for more information.
*
*See the [Rust documentation for `UnicodeSetDataBorrowed`](https://docs.rs/icu/latest/icu/properties/sets/struct.UnicodeSetDataBorrowed.html) for more information.
*/
const UnicodeSetData_box_destroy_registry = new FinalizationRegistry((ptr) => {
    wasm.icu4x_UnicodeSetData_destroy_mv1(ptr);
});

export class UnicodeSetData {
    // Internal ptr reference:
    #ptr = null;

    // Lifetimes are only to keep dependencies alive.
    // Since JS won't garbage collect until there are no incoming edges.
    #selfEdge = [];
    
    constructor(symbol, ptr, selfEdge) {
        if (symbol !== diplomatRuntime.internalConstructor) {
            console.error("UnicodeSetData is an Opaque type. You cannot call its constructor.");
            return;
        }
        
        this.#ptr = ptr;
        this.#selfEdge = selfEdge;
        
        // Are we being borrowed? If not, we can register.
        if (this.#selfEdge.length === 0) {
            UnicodeSetData_box_destroy_registry.register(this, this.#ptr);
        }
    }

    get ffiValue() {
        return this.#ptr;
    }

    contains(s) {
        let functionCleanupArena = new diplomatRuntime.CleanupArena();
        
        const sSlice = functionCleanupArena.alloc(diplomatRuntime.DiplomatBuf.str8(wasm, s));
        
        const result = wasm.icu4x_UnicodeSetData_contains_mv1(this.ffiValue, ...sSlice.splat());
    
        try {
            return result;
        }
        
        finally {
            functionCleanupArena.free();
        }
    }

    containsChar(cp) {
        const result = wasm.icu4x_UnicodeSetData_contains_char_mv1(this.ffiValue, cp);
    
        try {
            return result;
        }
        
        finally {}
    }

    static loadBasicEmoji(provider) {
        const diplomatReceive = new diplomatRuntime.DiplomatReceiveBuf(wasm, 5, 4, true);
        
        const result = wasm.icu4x_UnicodeSetData_load_basic_emoji_mv1(diplomatReceive.buffer, provider.ffiValue);
    
        try {
            if (!diplomatReceive.resultFlag) {
                const cause = new DataError(diplomatRuntime.internalConstructor, diplomatRuntime.enumDiscriminant(wasm, diplomatReceive.buffer));
                throw new globalThis.Error('DataError: ' + cause.value, { cause });
            }
            return new UnicodeSetData(diplomatRuntime.internalConstructor, diplomatRuntime.ptrRead(wasm, diplomatReceive.buffer), []);
        }
        
        finally {
            diplomatReceive.free();
        }
    }
}