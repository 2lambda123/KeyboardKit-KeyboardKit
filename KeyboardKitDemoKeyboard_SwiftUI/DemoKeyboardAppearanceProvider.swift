//
//  DemoKeyboardAppearanceProvider.swift
//  KeyboardKitDemo
//
//  Created by Daniel Saidi on 2021-01-10.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import KeyboardKitSwiftUI
import UIKit

/**
 This provider inherits `StandardKeyboardAppearanceProvider`
 and adds demo-specific functionality to it.
 */
class DemoKeyboardAppearanceProvider: StandardKeyboardAppearanceProvider {
    
    override func font(for action: KeyboardAction) -> UIFont {
        switch action {
        case .space: return .preferredFont(forTextStyle: .body)
        default: return super.font(for: action)
        }
    }
    
    override func fontWeight(for action: KeyboardAction, context: KeyboardContext) -> UIFont.Weight? {
        let hasImage = action.standardButtonImage(for: context) != nil
        return hasImage ? .light : nil
    }
    
    override func text(for action: KeyboardAction) -> String? {
        switch action {
        case .space: return "space"
        default: return super.text(for: action)
        }
    }
}
