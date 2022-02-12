//
//  SimpleViewWithImage.swift
//  SwiftUIViewCollection
//
//  Created by Erik Dungan on 2/5/22.
//

import SwiftUI

struct SimpleViewWithImage: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack() {
            Image("ManWithDog")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 360, alignment: .center)
                .clipped()
            Button("Press to dismiss") {
                dismiss()
            }
            Spacer()
        }
        .padding()
    }
}

struct SimpleViewWithImage_Previews: PreviewProvider {
    static var previews: some View {
        SimpleViewWithImage()
    }
}
