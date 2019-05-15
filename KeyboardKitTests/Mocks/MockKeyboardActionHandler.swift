//
//  MockKeyboardActionHandler.swift
//  KeyboardKitTests
//
//  Created by Daniel Saidi on 2019-05-06.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import MockNRoll

class MockKeyboardActionHandler: Mock, KeyboardActionHandler {
    
    func handleTap(on action: KeyboardAction, view: UIView) {
        invoke(handleTap, args: (action, view))
    }
    
    func handleDoubleTap(on action: KeyboardAction, view: UIView) {
        invoke(handleDoubleTap, args: (action, view))
    }
    
    func handleLongPress(on action: KeyboardAction, view: UIView) {
        invoke(handleLongPress, args: (action, view))
    }
    
    func giveHapticFeedbackForTap(on action: KeyboardAction) {
        invoke(giveHapticFeedbackForTap, args: action)
    }
    
    func giveHapticFeedbackForDoubleTap(on action: KeyboardAction) {
        invoke(giveHapticFeedbackForDoubleTap, args: action)
    }
    
    func giveHapticFeedbackForLongPress(on action: KeyboardAction) {
        invoke(giveHapticFeedbackForLongPress, args: action)
    }
}
