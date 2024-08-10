//
//  Double+Extension.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import Foundation

extension Double {
    static func formatDoubleOrZero(from doubleStr: String) -> Self {
        Double(doubleStr) ?? 0.0
    }
}
