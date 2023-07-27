//
//  StandardKeyboardFeedbackHandlerTests.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2019-07-04.
//  Copyright © 2019-2023 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import XCTest

class StandardKeyboardFeedbackHandlerTests: XCTestCase {

    var handler: StandardKeyboardFeedbackHandler!

    var audioEngine: MockAudioFeedbackEngine!
    var hapticEngine: MockHapticFeedbackEngine!

    override func setUp() {
        audioEngine = MockAudioFeedbackEngine()
        hapticEngine = MockHapticFeedbackEngine()
        AudioFeedbackEngine.shared = audioEngine
        HapticFeedbackEngine.shared = hapticEngine
        handler = StandardKeyboardFeedbackHandler(
            settings: KeyboardFeedbackSettings()
        )
    }
    
    func testTriggerFeedbackTriggersAudioAndHapticFeedback() {
        handler.triggerFeedback(for: .press, on: .backspace)
        XCTAssertTrue(audioEngine.hasCalled(\.triggerRef))
        XCTAssertTrue(hapticEngine.hasCalled(\.triggerRef))
    }

    func testTriggerAudioFeedbackTriggersAudioFeedbackOnly() {
        handler.triggerAudioFeedback(for: .press, on: .backspace)
        XCTAssertTrue(audioEngine.hasCalled(\.triggerRef))
        XCTAssertFalse(hapticEngine.hasCalled(\.triggerRef))
    }

    func testTriggerHapticFeedbackTriggersHapticFeedbackOnly() {
        handler.triggerHapticFeedback(for: .press, on: .backspace)
        XCTAssertFalse(audioEngine.hasCalled(\.triggerRef))
        XCTAssertTrue(hapticEngine.hasCalled(\.triggerRef))
    }
}
