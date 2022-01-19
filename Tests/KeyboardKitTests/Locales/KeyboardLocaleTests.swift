//
//  KeyboardLocaleTests.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-03-17.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation
import Quick
import Nimble
import KeyboardKit

class KeyboardLocaleTests: QuickSpec {
    
    override func spec() {
        
        let locales = KeyboardLocale.allCases
        
        describe("locale identifier") {
            
            it("is valid for all cases") {
                let map = locales.map { ($0, $0.locale.identifier) }
                let result = Dictionary(uniqueKeysWithValues: map)
                expect(result).to(equal(
                    [
                        .albanian: "sq",
                        .arabic: "ar",
                        .belarusian: "be",
                        .bulgarian: "bg",
                        .czech: "cs",
                        .croatian: "hr",
                        .danish: "da",
                        .dutch: "nl",
                        .dutch_belgium: "nl_BE",
                        .english: "en",
                        .english_gb: "en_GB",
                        .english_us: "en_US",
                        .estonian: "et",
                        .french: "fr",
                        .french_belgium: "fr_BE",
                        .french_switzerland: "fr_CH",
                        .finnish: "fi",
                        .german: "de",
                        .german_austria: "de_AT",
                        .german_switzerland: "de_CH",
                        .greek: "el",
                        .hungarian: "hu",
                        .icelandic: "is",
                        .irish: "ga_IE",
                        .italian: "it",
                        .kurdish_sorani: "ckb",
                        .latvian: "lv",
                        .lithuanian: "lt",
                        .macedonian: "mk",
                        .maltese: "mt",
                        .norwegian: "nb",
                        .persian: "fa",
                        .polish: "pl",
                        .portuguese: "pt_PT",
                        .portuguese_brazil: "pt_BR",
                        .romanian: "ro",
                        .romanian_moldova: "ro_MD",
                        .russian: "ru",
                        .serbian: "sr",
                        .serbian_latin: "sr-Latn",
                        .slovenian: "sl",
                        .slovak: "sk",
                        .spanish: "es",
                        .swedish: "sv",
                        .turkish: "tr",
                        .ukrainian: "uk"
                    ]
                ))
            }
        }
        
        describe("locale identifier") {
            
            it("is identical to enum id") {
                let map = locales.map { ($0, $0.id == $0.localeIdentifier) }
                let result = Dictionary(uniqueKeysWithValues: map)
                expect(result.allSatisfy { $0.value == true }).to(beTrue())
            }
        }
        
        describe("embedded locale identifier") {
            
            it("is identical to enum id") {
                let map = locales.map { ($0, $0.id == $0.locale.identifier) }
                let result = Dictionary(uniqueKeysWithValues: map)
                expect(result.allSatisfy { $0.value == true }).to(beTrue())
            }
        }
        
        describe("localized name") {
            
            it("is valid for all cases") {
                let map = locales.map { ($0, $0.localizedName) }
                let result = Dictionary(uniqueKeysWithValues: map)
                
                expect(result).to(equal(
                    [
                        .albanian: "shqip",
                        .arabic: "العربية",
                        .belarusian: "беларуская",
                        .bulgarian: "български",
                        .dutch_belgium: "Nederlands (België)",
                        .croatian: "hrvatski",
                        .czech: "čeština",
                        .danish: "dansk",
                        .dutch: "Nederlands",
                        .english: "English",
                        .english_gb: "English (United Kingdom)",
                        .english_us: "English (United States)",
                        .estonian: "eesti",
                        .finnish: "suomi",
                        .french: "français",
                        .french_belgium: "français (Belgique)",
                        .french_switzerland: "français (Suisse)",
                        .german: "Deutsch",
                        .german_austria: "Deutsch (Österreich)",
                        .german_switzerland: "Deutsch (Schweiz)",
                        .greek: "Ελληνικά",
                        .hungarian: "magyar",
                        .icelandic: "íslenska",
                        .irish: "Gaeilge (Éire)",
                        .italian: "italiano",
                        .kurdish_sorani: "کوردیی ناوەندی",
                        .latvian: "latviešu",
                        .lithuanian: "lietuvių",
                        .macedonian: "македонски",
                        .maltese: "Malti",
                        .norwegian: "norsk bokmål",
                        .persian: "فارسی",
                        .polish: "polski",
                        .portuguese: "português (Portugal)",
                        .portuguese_brazil: "português (Brasil)",
                        .romanian: "română",
                        .romanian_moldova: "română (Republica Moldova)",
                        .russian: "русский",
                        .serbian: "српски",
                        .serbian_latin: "srpski (latinica)",
                        .slovenian: "slovenščina",
                        .slovak: "slovenčina",
                        .spanish: "español",
                        .swedish: "svenska",
                        .turkish: "Türkçe",
                        .ukrainian: "українська"
                    ]
                ))
            }
        }
        
        describe("flag") {
            
            it("is valid for all cases") {
                let map = locales.map { ($0, $0.flag) }
                let result = Dictionary(uniqueKeysWithValues: map)
                expect(result).to(equal(
                    [
                        .albanian: "🇦🇱",
                        .arabic: "🇦🇪",
                        .belarusian: "🇧🇾",
                        .bulgarian: "🇧🇬",
                        .croatian: "🇭🇷",
                        .czech: "🇨🇿",
                        .danish: "🇩🇰",
                        .dutch: "🇳🇱",
                        .dutch_belgium: "🇧🇪",
                        .english: "🇺🇸",
                        .english_gb: "🇬🇧",
                        .english_us: "🇺🇸",
                        .estonian: "🇪🇪",
                        .finnish: "🇫🇮",
                        .french: "🇫🇷",
                        .french_belgium: "🇧🇪",
                        .french_switzerland: "🇨🇭",
                        .german: "🇩🇪",
                        .german_austria: "🇦🇹",
                        .german_switzerland: "🇨🇭",
                        .greek: "🇬🇷",
                        .hungarian: "🇭🇺",
                        .icelandic: "🇮🇸",
                        .irish: "🇮🇪",
                        .italian: "🇮🇹",
                        .kurdish_sorani: "🇹🇯",
                        .latvian: "🇱🇻",
                        .lithuanian: "🇱🇹",
                        .macedonian: "🇲🇰",
                        .maltese: "🇲🇹",
                        .norwegian: "🇳🇴",
                        .persian: "🇮🇷",
                        .polish: "🇵🇱",
                        .portuguese: "🇵🇹",
                        .portuguese_brazil: "🇧🇷",
                        .romanian: "🇷🇴",
                        .romanian_moldova: "🇲🇩",
                        .russian: "🇷🇺",
                        .serbian: "🇷🇸",
                        .serbian_latin: "🇷🇸",
                        .slovenian: "🇸🇮",
                        .slovak: "🇸🇰",
                        .spanish: "🇪🇸",
                        .swedish: "🇸🇪",
                        .turkish: "🇹🇷",
                        .ukrainian: "🇺🇦"
                    ]
                ))
            }
        }
        
        describe("is LTR") {
            
            it("is derived from resolved locale for all locales") {
                locales.forEach {
                    expect($0.isLeftToRight).to(equal($0.locale.isLeftToRight))
                }
            }
        }
        
        describe("is RTL") {
            
            it("is derived from resolved locale for all locales") {
                locales.forEach {
                    expect($0.isRightToLeft).to(equal($0.locale.isRightToLeft))
                }
            }
        }
        
        describe("sorted") {
            
            it("is sorted by localized name") {
                let locales = KeyboardLocale.allCases.sorted()
                let names = locales.map { $0.localizedName.capitalized }
                expect(names).to(contain(["Dansk", "Svenska"]))
                expect(names.first).toNot(equal("English"))
            }
            
            it("can insert an existing locale firstmost") {
                let locales = KeyboardLocale.allCases.sorted(insertFirst: .english)
                let names = locales.map { $0.localizedName.capitalized }
                expect(names).to(contain(["Dansk", "Svenska"]))
                expect(names.first).to(equal("English"))
            }
        }
    }
}
