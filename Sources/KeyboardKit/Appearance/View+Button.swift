//
//  View+Button.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-06-24.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension View {
    
    /**
     Apply a keyboard button appearance to the view.
     */
    func keyboardButton(
        for action: KeyboardAction,
        appearance: KeyboardAppearance) -> some View {
        self.background(appearance.buttonBackgroundColor(for: action))
            .foregroundColor(appearance.buttonForegroundColor(for: action))
            .cornerRadius(appearance.buttonCornerRadius(for: action))
            .shadow(color: appearance.buttonShadowColor(for: action), radius: 0, x: 0, y: 1)
            .shadow(color: appearance.buttonShadowColor(for: action), radius: 0, x: 0, y: 1)
            .font(appearance.buttonFont(for: action))
    }
    
    /**
     Apply the standard button style, including a background,
     foreground color, corner radius, shadow and font.
     */
    @available(*, deprecated, message: "Take an appearance provider instead of context")
    func standardButtonStyle(
        for action: KeyboardAction,
        context: KeyboardContext,
        cornerRadius: CGFloat = 4.0) -> some View {
        self.standardButtonBackground(for: action, context: context)
            .standardButtonForeground(for: context)
            .cornerRadius(cornerRadius)
            .standardButtonShadow(for: context)
            .standardButtonFont(for: action, context: context)
    }
    
    /**
     Apply a standard button background.
     */
    @available(*, deprecated, message: "Move this to the appearance provider instead")
    func standardButtonBackground(
        for action: KeyboardAction,
        context: KeyboardContext) -> some View {
        background(action.standardButtonBackgroundColor(for: context))
    }
    
    /**
     Apply a standard button font.
     */
    @available(*, deprecated, message: "Move this to the appearance provider instead")
    func standardButtonFont(
        for action: KeyboardAction,
        context: KeyboardContext) -> some View {
        let provider = keyboardInputViewController.keyboardAppearance
        return font(provider.buttonFont(for: action))
    }
    
    /**
     Apply a standard button foreground color.
     */
    @available(*, deprecated, message: "Move this to the appearance provider instead")
    func standardButtonForeground(for context: KeyboardContext) -> some View {
        foregroundColor(.standardButtonTint(for: context))
    }
    
    /**
     Apply a standard button shadow.
     */
    @available(*, deprecated, message: "Move this to the appearance provider instead")
    func standardButtonShadow(for context: KeyboardContext) -> some View {
        let color = Color.standardButtonShadowColor(for: context)
        return self.shadow(color: color, radius: 0, x: 0, y: 1)
    }
}
