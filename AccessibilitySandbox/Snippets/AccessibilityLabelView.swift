//
//  AccessibilityLabelView.swift
//  AccessibilitySandbox
//
//  Created by Rodrigo on 22-08-24.
//

import SwiftUI

struct AccessibilityLabelView: View {
    
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-hortsmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    
    var body: some View {
        Button {
            selectedPicture = Int.random(in: 0...3)
        } label: {
            Image(pictures[selectedPicture])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labels[selectedPicture])
        //.accessibilityAddTraits(.isButton)
        //.accessibilityRemoveTraits(.isLink)
    }
}

#Preview {
    AccessibilityLabelView()
}
