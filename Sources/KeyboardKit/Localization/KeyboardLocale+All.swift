//
//  KeyboardLocale+All.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-02-01.
//  Copyright © 2021-2024 Daniel Saidi. All rights reserved.
//

import Foundation

public extension KeyboardLocale {
    
    /// Get all LTR locales.
    static var allLtr: [KeyboardLocale] {
        allCases.filter { $0.locale.isLeftToRight }
    }
    
    /// Get all RTL locales.
    static var allRtl: [KeyboardLocale] {
        allCases.filter { $0.locale.isRightToLeft }
    }
}

public extension Collection where Element == KeyboardLocale {

    /// Get all locales.
    static var all: [KeyboardLocale] {
        KeyboardLocale.all
    }

    /// Get all LTR locales.
    static var allLtr: [KeyboardLocale] {
        KeyboardLocale.allLtr
    }

    /// Get all RTL locales.
    static var allRtl: [KeyboardLocale] {
        KeyboardLocale.allRtl
    }
}
