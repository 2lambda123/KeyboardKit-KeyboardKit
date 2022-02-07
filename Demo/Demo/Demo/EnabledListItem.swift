//
//  EnabledListItem.swift
//  Demo
//
//  Created by Daniel Saidi on 2021-10-14.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import SwiftUI
import SwiftUIKit

/**
 This list item view is used to show if a certain feature is
 enabled or not.
 */
struct EnabledListItem: View {
    
    let isEnabled: Bool
    let enabledText: String
    let disabledText: String
    
    var body: some View {
        ListItem {
            Label(
                isEnabled ? enabledText : disabledText,
                image: isEnabled ? .checkmark : .alert)
        }.foregroundColor(isEnabled ? .green : .orange)
    }
}

struct EnabledListItem_Previews: PreviewProvider {
    
    static var previews: some View {
        EnabledListItem(isEnabled: true, enabledText: "Enabled", disabledText: "Disabled")
        EnabledListItem(isEnabled: false, enabledText: "Enabled", disabledText: "Disabled")
    }
}
