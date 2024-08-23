//
//  MultipleLabelsView.swift
//  AccessibilitySandbox
//
//  Created by Rodrigo on 22-08-24.
//

import SwiftUI

struct MultipleLabelsView: View {
    var body: some View {
        Button("John Fitzgerald Kennedy") {
            print("Button tapped")
        }
        .accessibilityInputLabels(["John Fitzgerald Kennedy", "Kennedy", "JFK"])
    }
}

#Preview {
    MultipleLabelsView()
}
