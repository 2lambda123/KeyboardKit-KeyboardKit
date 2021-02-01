//
//  ObservableKeyboardContext+Preview.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-01-28.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

public extension ObservableKeyboardContext {
    
    /**
     This preview can be used to preview keyboard views.
     */
    static var preview: ObservableKeyboardContext {
        ObservableKeyboardContext(controller: KeyboardInputViewController())
    }
}
