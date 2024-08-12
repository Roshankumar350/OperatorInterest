//
//  Resource.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import Foundation

struct Resource {
    let date: Date
    let stockName: String
    let symbol: String
    let lotSize: Double
    let sectorName: String
    let industryName: String
    let mCapCategory: String
    let close: Double
    let changePercentage: Double
    let cumulativeFutureOI: Double
    let oIChangePercentage: Double
    let volumeTimes: Double
    let deliveryTimes: Double
    let cumulativeCallOI: Double
    let cumulativePutOI: Double
    let putCallRatio: Double
    let pcrChange1D: Double
    let oITrend: String
}

extension Resource {
    static let tempResource = Resource(
        date: Date.formatDate(from: "09/Aug/2024"),
        stockName: "Trent Ltd.",
        symbol: "TRENT",
        lotSize: 200.00,
        sectorName: "Retailing",
        industryName: "Retailing",
        mCapCategory: "Large Cap",
        close: 6275.35,
        changePercentage: 11.18,
        cumulativeFutureOI: 3576600.00,
        oIChangePercentage: 20.91,
        volumeTimes: 8.23,
        deliveryTimes: 5.39,
        cumulativeCallOI: 3079600.00,
        cumulativePutOI: 3473200.00,
        putCallRatio: 1.13,
        pcrChange1D: 0.27,
        oITrend: "AggressiveNewLong"
    )
}
