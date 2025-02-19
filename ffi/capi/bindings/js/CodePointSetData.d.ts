// generated by diplomat-tool
import type { CodePointRangeIterator } from "./CodePointRangeIterator"
import type { DataError } from "./DataError"
import type { DataProvider } from "./DataProvider"
import type { Error } from "./Error"
import type { pointer, codepoint } from "./diplomat-runtime.d.ts";


/** An ICU4X Unicode Set Property object, capable of querying whether a code point is contained in a set based on a Unicode property.
*
*See the [Rust documentation for `properties`](https://docs.rs/icu/latest/icu/properties/index.html) for more information.
*
*See the [Rust documentation for `CodePointSetData`](https://docs.rs/icu/latest/icu/properties/sets/struct.CodePointSetData.html) for more information.
*
*See the [Rust documentation for `CodePointSetDataBorrowed`](https://docs.rs/icu/latest/icu/properties/sets/struct.CodePointSetDataBorrowed.html) for more information.
*/
export class CodePointSetData {
    

    get ffiValue(): pointer;

    contains(cp: codepoint): boolean;

    iterRanges(): CodePointRangeIterator;

    iterRangesComplemented(): CodePointRangeIterator;

    static loadForGeneralCategoryGroup(provider: DataProvider, group: number): CodePointSetData;

    static loadAsciiHexDigit(provider: DataProvider): CodePointSetData;

    static loadAlnum(provider: DataProvider): CodePointSetData;

    static loadAlphabetic(provider: DataProvider): CodePointSetData;

    static loadBidiControl(provider: DataProvider): CodePointSetData;

    static loadBidiMirrored(provider: DataProvider): CodePointSetData;

    static loadBlank(provider: DataProvider): CodePointSetData;

    static loadCased(provider: DataProvider): CodePointSetData;

    static loadCaseIgnorable(provider: DataProvider): CodePointSetData;

    static loadFullCompositionExclusion(provider: DataProvider): CodePointSetData;

    static loadChangesWhenCasefolded(provider: DataProvider): CodePointSetData;

    static loadChangesWhenCasemapped(provider: DataProvider): CodePointSetData;

    static loadChangesWhenNfkcCasefolded(provider: DataProvider): CodePointSetData;

    static loadChangesWhenLowercased(provider: DataProvider): CodePointSetData;

    static loadChangesWhenTitlecased(provider: DataProvider): CodePointSetData;

    static loadChangesWhenUppercased(provider: DataProvider): CodePointSetData;

    static loadDash(provider: DataProvider): CodePointSetData;

    static loadDeprecated(provider: DataProvider): CodePointSetData;

    static loadDefaultIgnorableCodePoint(provider: DataProvider): CodePointSetData;

    static loadDiacritic(provider: DataProvider): CodePointSetData;

    static loadEmojiModifierBase(provider: DataProvider): CodePointSetData;

    static loadEmojiComponent(provider: DataProvider): CodePointSetData;

    static loadEmojiModifier(provider: DataProvider): CodePointSetData;

    static loadEmoji(provider: DataProvider): CodePointSetData;

    static loadEmojiPresentation(provider: DataProvider): CodePointSetData;

    static loadExtender(provider: DataProvider): CodePointSetData;

    static loadExtendedPictographic(provider: DataProvider): CodePointSetData;

    static loadGraph(provider: DataProvider): CodePointSetData;

    static loadGraphemeBase(provider: DataProvider): CodePointSetData;

    static loadGraphemeExtend(provider: DataProvider): CodePointSetData;

    static loadGraphemeLink(provider: DataProvider): CodePointSetData;

    static loadHexDigit(provider: DataProvider): CodePointSetData;

    static loadHyphen(provider: DataProvider): CodePointSetData;

    static loadIdContinue(provider: DataProvider): CodePointSetData;

    static loadIdeographic(provider: DataProvider): CodePointSetData;

    static loadIdStart(provider: DataProvider): CodePointSetData;

    static loadIdsBinaryOperator(provider: DataProvider): CodePointSetData;

    static loadIdsTrinaryOperator(provider: DataProvider): CodePointSetData;

    static loadJoinControl(provider: DataProvider): CodePointSetData;

    static loadLogicalOrderException(provider: DataProvider): CodePointSetData;

    static loadLowercase(provider: DataProvider): CodePointSetData;

    static loadMath(provider: DataProvider): CodePointSetData;

    static loadNoncharacterCodePoint(provider: DataProvider): CodePointSetData;

    static loadNfcInert(provider: DataProvider): CodePointSetData;

    static loadNfdInert(provider: DataProvider): CodePointSetData;

    static loadNfkcInert(provider: DataProvider): CodePointSetData;

    static loadNfkdInert(provider: DataProvider): CodePointSetData;

    static loadPatternSyntax(provider: DataProvider): CodePointSetData;

    static loadPatternWhiteSpace(provider: DataProvider): CodePointSetData;

    static loadPrependedConcatenationMark(provider: DataProvider): CodePointSetData;

    static loadPrint(provider: DataProvider): CodePointSetData;

    static loadQuotationMark(provider: DataProvider): CodePointSetData;

    static loadRadical(provider: DataProvider): CodePointSetData;

    static loadRegionalIndicator(provider: DataProvider): CodePointSetData;

    static loadSoftDotted(provider: DataProvider): CodePointSetData;

    static loadSegmentStarter(provider: DataProvider): CodePointSetData;

    static loadCaseSensitive(provider: DataProvider): CodePointSetData;

    static loadSentenceTerminal(provider: DataProvider): CodePointSetData;

    static loadTerminalPunctuation(provider: DataProvider): CodePointSetData;

    static loadUnifiedIdeograph(provider: DataProvider): CodePointSetData;

    static loadUppercase(provider: DataProvider): CodePointSetData;

    static loadVariationSelector(provider: DataProvider): CodePointSetData;

    static loadWhiteSpace(provider: DataProvider): CodePointSetData;

    static loadXdigit(provider: DataProvider): CodePointSetData;

    static loadXidContinue(provider: DataProvider): CodePointSetData;

    static loadXidStart(provider: DataProvider): CodePointSetData;

    static loadForEcma262(provider: DataProvider, propertyName: string): CodePointSetData;
}