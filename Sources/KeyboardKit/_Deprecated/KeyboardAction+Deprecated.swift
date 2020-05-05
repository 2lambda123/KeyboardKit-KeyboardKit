//
//  KeyboardAction+Deprecated.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-05-05.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import Foundation

public extension KeyboardAction {

    @available(*, deprecated, renamed: "nextKeyboard")
    static var switchKeyboard: KeyboardAction { .nextKeyboard }
}
