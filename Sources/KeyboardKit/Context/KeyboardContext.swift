//
//  KeyboardContext.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-06-15.
//  Copyright © 2020 Daniel Saidi. All rights reserved.
//

import Foundation
import UIKit

/**
 This protocol can be implemented by any classes that can be
 used to provide the keyboard extension with contextual info.
 */
public protocol KeyboardContext: AnyObject {
    
    var hasFullAccess: Bool { get set }
    var keyboardType: KeyboardType { get set }
    var needsInputModeSwitchKey: Bool { get set }
}

public extension KeyboardContext {
    
    /**
     This function changes keyboard type, using the standard
     system behavior, where some changes may be ignored. For
     instance, it is not possible to change from caps locked
     keyboards to upper-case ones.
     
     The delay can be used to allow a double-tap action time
     to finish before changing the keyboard.
     */
    func changeKeyboardType(to type: KeyboardType, after delay: DispatchTimeInterval, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            self.changeKeyboardTypeAfterDelay(to: type, completion: completion)
        }
    }
}

private extension KeyboardContext {
    
    func changeKeyboardTypeAfterDelay(to type: KeyboardType, completion: @escaping () -> Void) {
        guard keyboardType.canBeReplaced(with: type) else { return }
        keyboardType = type
        completion()
    }
}
