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
 */
struct KeyboardView: View {
    
    var actionHandler: KeyboardActionHandler
    var appearance: KeyboardAppearance
    var layoutProvider: KeyboardLayoutProvider
    
    @EnvironmentObject var autocompleteContext: AutocompleteContext
    @EnvironmentObject var keyboardContext: KeyboardContext
    @EnvironmentObject var toastContext: KeyboardToastContext
    
    var body: some View {
        keyboardView.keyboardToast(
            context: toastContext,
            background: toastBackground)
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
}


// MARK: - Private Views

private extension KeyboardView {
    
    var autocompleteBar: some View {
        AutocompleteToolbar(
            suggestions: autocompleteContext.suggestions,
            itemBuilder: autocompleteBarItemBuilder)
            .frame(height: 50)
    }
    
    func autocompleteBarItem(for suggestion: AutocompleteSuggestion) -> AnyView {
        guard let subtitle = suggestion.subtitle else { return AutocompleteToolbar.standardItem(for: suggestion) }
        return AnyView(VStack(spacing: 0) {
            AutocompleteToolbarItemText(suggestion: suggestion)
            Text(subtitle).font(.footnote)
        }.frame(maxWidth: .infinity))
    }
    
    func autocompleteBarItemBuilder(suggestion: AutocompleteSuggestion) -> AnyView {
        AnyView(autocompleteBarItem(for: suggestion)
                    .background(Color.clearInteractable))
    }
    
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
    
    var systemKeyboard: some View {
        VStack(spacing: 0) {
            autocompleteBar
            textField           // Comment out this if you don't want to test the text field
            SystemKeyboard(
                layout: layoutProvider.keyboardLayout(for: keyboardContext),
                appearance: appearance,
                actionHandler: actionHandler,
                buttonBuilder: buttonBuilder)
        }
    }
    
    var textField: some View {
        KeyboardTextField(config: {
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
    
    func buttonBuilder(action: KeyboardAction) -> AnyView {
        switch action {
        case .space: return AnyView(SystemKeyboardSpaceButtonContent())
        default: return SystemKeyboard.standardButtonBuilder(action: action)
        }
    }
    
    func switchToDefaultKeyboard() {
        actionHandler
            .handle(.tap, on: .keyboardType(.alphabetic(.lowercased)))
    }
}
