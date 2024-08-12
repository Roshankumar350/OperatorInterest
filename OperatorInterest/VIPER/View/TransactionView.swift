//
//  TransactionView.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import SwiftUI

struct TransactionView: View {
    let resource: Resource
    
    var formattedDate: String {
        let resourceDate = resource.date
        return resourceDate.formatted(date: .complete, time: .omitted)
    }
    
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack {
                Text("Date:")
                    .staticTitleStyle()
                Spacer()
                Text(formattedDate)
                    .dynamicTextStyle()
            }
            HStack {
                Text("Name:")
                    .staticTitleStyle()
                Spacer()
                Text(resource.stockName)
                    .dynamicTextStyle()
            }
            HStack {
                Text("Market Cap:")
                    .staticTitleStyle()
                Spacer()
                Text(resource.mCapCategory)
                    .dynamicTextStyle()
            }
            HStack {
                Text("Sector:")
                    .staticTitleStyle()
                Spacer()
                Text(resource.sectorName)
                    .dynamicTextStyle()
            }
            HStack {
                Text("Industry:")
                    .staticTitleStyle()
                Spacer()
                Text(resource.industryName)
                    .dynamicTextStyle()
            }
        }).padding()
        
    }
}

#Preview {
    TransactionView(resource: Resource.tempResource)
}
