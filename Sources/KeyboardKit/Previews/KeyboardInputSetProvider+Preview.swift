//
//  KeyboardInputSetProvider+Preview.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-01-25.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

public extension KeyboardInputSetProvider where Self == PreviewKeyboardInputSetProvider {
    
    /**
     This preview provider can be used in SwiftUI previews.
     */
    static var preview: KeyboardInputSetProvider { PreviewKeyboardInputSetProvider() }
}

/**
 This input set provider can be used in SwiftUI previews.
 */
public class PreviewKeyboardInputSetProvider: KeyboardInputSetProvider {
    
    /**
     Create a preview provider.
     
     - Parameters:
       - context: The context to use by the preview, by default `.preview`.
     */
    public init(context: KeyboardContext = .preview) {
        self.context = context
        self.provider = StandardKeyboardInputSetProvider(context: context)
    }
    
    private let context: KeyboardContext
    private let provider: KeyboardInputSetProvider
    
    /**
     The input set to use for alphabetic keyboards.
     */
    public var alphabeticInputSet: AlphabeticInputSet {
        provider.alphabeticInputSet
    }
    
    /**
     The input set to use for numeric keyboards.
     */
    public var numericInputSet: NumericInputSet {
        provider.numericInputSet
    }
    
    /**
     The input set to use for symbolic keyboards.
     */
    public var symbolicInputSet: SymbolicInputSet {
        provider.symbolicInputSet
    }
}
