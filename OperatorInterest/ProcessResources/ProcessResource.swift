//
//  ProcessResource.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import Foundation

final class ProcessResource {
    
    private let csvResource: String
    
    init(csvResource: String) {
        self.csvResource = csvResource
    }
    
    func processCSVResource() -> [Resource]? {
        let rows = csvResource.components(separatedBy: .newlines).filter{ !$0.trimmingCharacters(in: .whitespaces).isEmpty}
        var resources = [Resource]()
        resources.reserveCapacity(rows.count)
        
        for eachRows in rows {
            resources.append(createTransaction(from: eachRows))
        }
        
        return resources
    }
    
    private func createTransaction(from row: String) -> Resource {
        var components = row.components(separatedBy: ",")
        return Resource(
            date: Date.formatDate(from: components.subsequentNext()),
            stockName: components.subsequentNext(),
            symbol: components.subsequentNext(),
            lotSize: Double(components.subsequentNext()) ?? 0.0,
            sectorName: components.subsequentNext(),
            industryName: components.subsequentNext(),
            mCapCategory: components.subsequentNext(),
            close: Double.formatDoubleOrZero(from: components.subsequentNext()),
            changePercentage: Double.formatDoubleOrZero(from: components.subsequentNext()),
            cumulativeFutureOI: Double.formatDoubleOrZero(from: components.subsequentNext()),
            oIChangePercentage: Double.formatDoubleOrZero(from: components.subsequentNext()),
            volumeTimes: Double.formatDoubleOrZero(from: components.subsequentNext()),
            deliveryTimes: Double.formatDoubleOrZero(from: components.subsequentNext()),
            cumulativeCallOI: Double.formatDoubleOrZero(from: components.subsequentNext()),
            cumulativePutOI: Double.formatDoubleOrZero(from: components.subsequentNext()),
            putCallRatio: Double.formatDoubleOrZero(from: components.subsequentNext()),
            pcrChange1D: Double.formatDoubleOrZero(from: components.subsequentNext()),
            oITrend: components.subsequentNext()
        )
        
    }
}

extension Array where Element == String {
    static var count = 0
    
    mutating func subsequentNext() -> String {
        var nextElement = ""
        if Array.count < self.count {
            nextElement = self[Array.count]
        } else {
            nextElement = ""
        }
        Array.count += 1
        return nextElement
    }
}
