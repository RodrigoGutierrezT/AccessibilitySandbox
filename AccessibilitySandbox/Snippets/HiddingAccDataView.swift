//
//  HiddingAccDataView.swift
//  AccessibilitySandbox
//
//  Created by Rodrigo on 22-08-24.
//

import SwiftUI

struct HiddingAccDataView: View {
    var body: some View {
        
        Image(decorative: "character")
            .resizable()
            .scaledToFit()
        
        Image(.character)
            .resizable()
            .scaledToFit()
            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        
        VStack {
            Text("Your score is")
            
            Text("1000")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .accessibilityElement() // ignores children by default
        .accessibilityLabel("Your score is 1000")
    }
}

#Preview {
    HiddingAccDataView()
}
