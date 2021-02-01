//
//  SystemKeyboardButtonRowItem.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-12-02.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This view is meant to be used within a `SystemKeyboard` and
 will apply the correct frames and paddings to make the view
 behave well within an automatically generated keyboard view.
 
 This view wraps a `SystemKeyboardButtonContent` and adjusts
 it to be used within a keyboard row. This involves applying
 height and paddings and new gestures in a way that make the
 buttons seem separated while actually sticking together.
 */
public struct SystemKeyboardButtonRowItem<Content: View>: View {
    
    public init(
        action: KeyboardAction,
        actionHandler: KeyboardActionHandler,
        buttonContent: Content,
        dimensions: KeyboardDimensions = SystemKeyboardDimensions(),
        keyboardSize: CGSize) {
        self.action = action
        self.actionHandler = actionHandler
        self.buttonContent = buttonContent
        self.dimensions = dimensions
        self.keyboardSize = keyboardSize
    }
    
    private let action: KeyboardAction
    private let actionHandler: KeyboardActionHandler
    private let buttonContent: Content
    private let dimensions: KeyboardDimensions
    private let keyboardSize: CGSize
    
    @EnvironmentObject private var context: ObservableKeyboardContext
    
    public var body: some View {
        buttonContent
            .frame(maxWidth: .infinity)
            .frame(height: dimensions.buttonHeight - dimensions.buttonInsets.top - dimensions.buttonInsets.bottom)
            .applyWidth(for: action, from: dimensions, keyboardWidth: keyboardSize.width, context: context)
            .standardButtonStyle(for: action, context: context)
            .padding(dimensions.buttonInsets)
            .frame(height: dimensions.buttonHeight)
            .background(Color.clearInteractable)
            .keyboardGestures(for: action, actionHandler: actionHandler)
    }
}

private extension View {
    
    @ViewBuilder
    func applyWidth(
        for action: KeyboardAction,
        from dimensions: KeyboardDimensions,
        keyboardWidth: CGFloat,
        context: KeyboardContext) -> some View {
        if let width = dimensions.width(for: action, keyboardWidth: keyboardWidth, context: context) {
            self.frame(width: width)
        } else {
            self
        }
    }
}
