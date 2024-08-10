//
//  LoadResources.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import Foundation

final class LoadResources {
    enum ResourcesName: String {
        case Derivative_Analytics_01
    }
    
    func loadResource(ofName: ResourcesName) -> String? {
        guard let resourceURL = Bundle.main.url(forResource: ofName.rawValue, withExtension: "csv") else {
            return nil
        }
        
        do {
            let string = try String(contentsOf: resourceURL, encoding: .utf8)
            return string
        } catch {
            print(error)
            return nil
        }
    }
}
