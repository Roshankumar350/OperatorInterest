//
//  Date+Extension.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import Foundation

extension Date {
    static var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter
    }()
    
    static func formatDate(from dateStr: String) -> Self {
        dateFormatter.date(from: dateStr) ?? dateFormatter.date(from: "01/Jan/2000")!
    }
}
