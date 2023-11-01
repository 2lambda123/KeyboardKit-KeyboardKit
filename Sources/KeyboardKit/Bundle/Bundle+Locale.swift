//
//  Bundle+Locale.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2023-10-31.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

import Foundation

extension Bundle {

    func bundle(for locale: Locale) -> Bundle? {
        guard let bundlePath = bundlePath(for: locale) else { return nil }
        return Bundle(path: bundlePath)
    }

    func bundlePath(for locale: Locale) -> String? {
        bundlePath(named: locale.identifier) ?? bundlePath(named: locale.languageCode)
    }

    func bundlePath(named name: String?) -> String? {
        path(forResource: name ?? "", ofType: "lproj")
    }
}
