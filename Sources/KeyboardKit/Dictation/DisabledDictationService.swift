//
//  DisabledDictationService.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2023-03-21.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This disabled service can be used as a placeholder when you
 don't have access to a real dictation service.

 KeyboardKit Pro unlocks a ``StandardDictationService`` when
 a valid license is registered.
 */
public class DisabledDictationService: DictationService {}

public extension DisabledDictationService {

    var authorizationStatus: DictationAuthorizationStatus { .disabledService }

    var isDictating: Bool { false }


    func requestDictationAuthorization() async -> DictationAuthorizationStatus {
        return authorizationStatus
    }

    func resetDictationResult() async throws {}

    func startDictating(with config: DictationConfiguration) async throws {
        throw DictationServiceError.disabledService
    }

    func stopDictating() async throws {
        throw DictationServiceError.disabledService
    }
}
