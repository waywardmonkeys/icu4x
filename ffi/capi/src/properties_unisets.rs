// This file is part of ICU4X. For terms of use, please see the file
// called LICENSE at the top level of the ICU4X source tree
// (online at: https://github.com/unicode-org/icu4x/blob/main/LICENSE ).

#[diplomat::bridge]
#[diplomat::abi_rename = "icu4x_{0}_mv1"]
#[diplomat::attr(auto, namespace = "icu4x")]
pub mod ffi {
    use alloc::boxed::Box;

    use crate::errors::ffi::DataError;
    use crate::provider::ffi::DataProvider;

    #[diplomat::opaque]
    /// An ICU4X Unicode Set Property object, capable of querying whether a code point is contained in a set based on a Unicode property.
    #[diplomat::rust_link(icu::properties, Mod)]
    #[diplomat::rust_link(icu::properties::sets::UnicodeSetData, Struct)]
    #[diplomat::rust_link(icu::properties::sets::UnicodeSetDataBorrowed, Struct)]
    pub struct UnicodeSetData(pub icu_properties::sets::UnicodeSetData);

    impl UnicodeSetData {
        /// Checks whether the string is in the set.
        #[diplomat::rust_link(icu::properties::sets::UnicodeSetDataBorrowed::contains, FnInStruct)]
        pub fn contains(&self, s: &DiplomatStr) -> bool {
            let Ok(s) = core::str::from_utf8(s) else {
                return false;
            };
            self.0.as_borrowed().contains(s)
        }
        /// Checks whether the code point is in the set.
        #[diplomat::rust_link(
            icu::properties::sets::UnicodeSetDataBorrowed::contains_char,
            FnInStruct
        )]
        #[diplomat::rust_link(
            icu::properties::sets::UnicodeSetDataBorrowed::contains32,
            FnInStruct,
            hidden
        )]
        pub fn contains_char(&self, cp: DiplomatChar) -> bool {
            self.0.as_borrowed().contains32(cp)
        }

        #[diplomat::rust_link(icu::properties::sets::basic_emoji, Fn)]
        #[diplomat::rust_link(icu::properties::sets::load_basic_emoji, Fn, hidden)]
        #[diplomat::attr(supports = fallible_constructors, named_constructor = "basic_emoji")]
        pub fn load_basic_emoji(provider: &DataProvider) -> Result<Box<UnicodeSetData>, DataError> {
            Ok(Box::new(UnicodeSetData(call_constructor_unstable!(
                icu_properties::sets::basic_emoji [r => Ok(r.static_to_owned())],
                icu_properties::sets::load_basic_emoji,
                provider,
            )?)))
        }
    }
}
