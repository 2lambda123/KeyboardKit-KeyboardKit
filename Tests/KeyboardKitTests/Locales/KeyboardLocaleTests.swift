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
                        .brazilian: "pt_BR",
                        .danish: "da",
                        .dutch: "nl",
                        .english: "en",
                        .english_gb: "en_GB",
                        .english_us: "en_US",
                        .estonian: "et",
                        .french: "fr",
                        .finnish: "fi",
                        .german: "de",
                        .icelandic: "is",
                        .irish: "ga_IE",
                        .italian: "it",
                        .kurdish_sorani: "ckb",
                        .latvian: "lv",
                        .lithuanian: "lt",
                        .norwegian: "nb",
                        .persian: "fa",
                        .polish: "pl",
                        .portuguese: "pt_PT",
                        .russian: "ru",
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
                        .brazilian: "português (Brasil)",
                        .danish: "dansk",
                        .dutch: "Nederlands",
                        .english: "English",
                        .english_gb: "English (United Kingdom)",
                        .english_us: "English (United States)",
                        .estonian: "eesti",
                        .finnish: "suomi",
                        .french: "français",
                        .german: "Deutsch",
                        .icelandic: "íslenska",
                        .irish: "Gaeilge (Éire)",
                        .italian: "italiano",
                        .kurdish_sorani: "کوردیی ناوەندی",
                        .latvian: "latviešu",
                        .lithuanian: "lietuvių",
                        .norwegian: "norsk bokmål",
                        .persian: "فارسی",
                        .polish: "polski",
                        .portuguese: "português (Portugal)",
                        .russian: "русский",
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
                        .brazilian: "🇧🇷",
                        .danish: "🇩🇰",
                        .dutch: "🇳🇱",
                        .english: "🇺🇸",
                        .english_gb: "🇬🇧",
                        .english_us: "🇺🇸",
                        .estonian: "🇪🇪",
                        .finnish: "🇫🇮",
                        .french: "🇫🇷",
                        .german: "🇩🇪",
                        .icelandic: "🇮🇸",
                        .irish: "🇮🇪",
                        .italian: "🇮🇹",
                        .kurdish_sorani: "🇹🇯",
                        .latvian: "🇱🇻",
                        .lithuanian: "🇱🇹",
                        .norwegian: "🇳🇴",
                        .persian: "🇮🇷",
                        .polish: "🇵🇱",
                        .portuguese: "🇵🇹",
                        .russian: "🇷🇺",
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
