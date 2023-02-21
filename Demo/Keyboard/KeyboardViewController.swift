//
//  KeyboardViewController.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-02-11.
//  Copyright © 2021-2023 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import SwiftUI

/**
 This keyboard demonstrates how to create a keyboard that is
 using a `SystemKeyboard` to mimic a native English keyboard.

 To use this keyboard, you must enable it in system settings
 ("Settings/General/Keyboards"). It needs full access to get
 access to features like haptic feedback.
 
 Note that this demo adds KeyboardKit as a local package, to
 make it easy to test and develop the library from this demo.
 */
class KeyboardViewController: KeyboardInputViewController {

    /**
     Here, we register demo-specific services which are then
     used by the keyboard.
     */
    override func viewDidLoad() {

        // Setup a custom keyboard locale
        // 💡 Changing locale without KeyboardKit Pro or custom input sets will only change some button texts.
        keyboardContext.setLocale(.english)

        // Setup a custom dictation key replacement.
        // 💡 This will replace the dictation button on keyboards that need it.
        keyboardContext.keyboardDictationReplacement = .keyboardType(.emojis)

        // Setup a fake, demo-specific autocomplete provider.
        // 💡 You can change this provider to see how the autocomplete changes.
        autocompleteProvider = FakeAutocompleteProvider()

        // Setup a demo-specific keyboard appearance.
        // 💡 You can change this appearance to see how the keyboard style changes.
        keyboardAppearance = DemoKeyboardAppearance(
            keyboardContext: keyboardContext)

        // Setup a demo-specific keyboard action handler.
        // 💡 You can change this handler to see how the keyboard behavior changes.
        keyboardActionHandler = DemoKeyboardActionHandler(
            inputViewController: self)

        // Setup a demo-specific keyboard layout provider.
        // 💡 You can change this provider to see how the keyboard layout changes.
        keyboardLayoutProvider = DemoKeyboardLayoutProvider(
            keyboardContext: keyboardContext,
            inputSetProvider: inputSetProvider)

        // Call super to perform the base initialization
        super.viewDidLoad()
    }

    /**
     Here, we setup the controller to use ``DemoKeyboardView``
     as the main keyboard view.
     */
    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()

        // Setup the demo with demo-specific keyboard view.
        setup(with: DemoKeyboardView(controller: self))
    }
}
