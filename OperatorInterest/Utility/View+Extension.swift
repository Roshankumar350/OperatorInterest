//
//  View+Extension.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 12/08/24.
//

import SwiftUI

extension View {
    func staticTitleStyle() -> some View {
        self.foregroundColor(.secondary)
            .fontWeight(.heavy)
    }
    
    func dynamicTextStyle() -> some View {
        self.foregroundColor(.secondary)
            .fontWeight(.bold)
    }
}

