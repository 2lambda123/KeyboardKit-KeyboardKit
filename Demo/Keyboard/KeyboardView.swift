//
//  KeyboardView.swift
//  KeyboardKitDemo
//
//  Created by Daniel Saidi on 2020-06-10.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import SwiftUI
import KeyboardKit

/**
 This view is the main view that is used by the extension by
 calling `setup(with:)` in `KeyboardViewController`.
 
 The view will switch over the current keyboard type and add
 the correct keyboard view.
 
 Set `addTextFieldAboveKeyboard` to true to add a text field
 above the demo keyboard. This text field will automatically
 take over as the main proxy instead of the main app.
 */
struct KeyboardView: View {
    
    let addTextFieldAboveKeyboard = false
    
    let actionHandler: KeyboardActionHandler
    let appearance: KeyboardAppearance
    let layoutProvider: KeyboardLayoutProvider
    
    @State private var text = "Text"
    
    @EnvironmentObject private var keyboardContext: KeyboardContext
    @EnvironmentObject private var toastContext: KeyboardToastContext
    
    var body: some View {
        keyboardView.keyboardToast(
            context: toastContext,
            background: toastBackground)
    }
}


// MARK: - Private Views

private extension KeyboardView {
    
    @ViewBuilder
    var emojiKeyboard: some View {
        if #available(iOSApplicationExtension 14.0, *) {
            EmojiCategoryKeyboard().padding(.vertical)
        } else {
            Text("Requires iOS 14 or later")
        }
    }
    
    var imageKeyboard: some View {
        ImageKeyboard(
            actionHandler: actionHandler,
            appearance: appearance)
            .padding()
    }
    
    @ViewBuilder
    var keyboardView: some View {
        switch keyboardContext.keyboardType {
        case .alphabetic, .numeric, .symbolic: systemKeyboard
        case .emojis: emojiKeyboard
        case .images: imageKeyboard
        default: Button("???", action: switchToDefaultKeyboard)
        }
    }
    
    var systemKeyboard: some View {
        VStack(spacing: 0) {
            DemoAutocompleteToolbar()
            if addTextFieldAboveKeyboard {
                textField
            }
            SystemKeyboard(
                layout: layoutProvider.keyboardLayout(for: keyboardContext),
                appearance: appearance,
                actionHandler: actionHandler,
                buttonBuilder: buttonBuilder)
        }
    }
    
    var textField: some View {
        KeyboardTextField(text: $text, config: {
            $0.placeholder = "Try typing here, press return to stop."
            $0.borderStyle = .roundedRect
            $0.autocapitalizationType = .sentences
        }).padding(3)
    }
    
    var toastBackground: some View {
        Color.white
            .cornerRadius(3)
            .shadow(color: Color.black.opacity(0.3), radius: 2, x: 1, y: 1)
    }
}


// MARK: - Private Functions

private extension KeyboardView {
    
    func buttonBuilder(
        action: KeyboardAction,
        appearance: KeyboardAppearance) -> AnyView {
        switch action {
        case .space: return AnyView(SystemKeyboardSpaceButtonContent(appearance: appearance))
        default: return SystemKeyboard.standardButtonBuilder(action: action, appearance: appearance)
        }
    }
    
    func switchToDefaultKeyboard() {
        actionHandler
            .handle(.tap, on: .keyboardType(.alphabetic(.lowercased)))
    }
}
