//
//  DerivativeAnalyticInteractor.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import Foundation

class DerivativeAnalyticInteractor {
    var resources: [Resource] = []
    
    func fetchResources() {
        guard let loadedCSVResource = LoadResources().loadResource(ofName: .Derivative_Analytics_01) else {
            debugPrint("Derivative_Analytics_01 failed to load")
            return
        }
        
        guard let processedResources = ProcessResource(csvResource: loadedCSVResource).processCSVResource() else {
            debugPrint("Derivative_Analytics_01 failed to process CSV file")
            return
        }
        
        resources = processedResources
    }
    
}
