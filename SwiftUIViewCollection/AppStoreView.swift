//
//  AppStoreView.swift
//  SwiftUIViewCollection
//
//  Created by Erik Dungan on 2/5/22.
//

import SwiftUI

struct AppStoreView: View {
    
    var body: some View {
        VStack() {
            HStack() {
                Image("GirlWithDog")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .background(Circle()
                        .fill(Color.orange))
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipped()
                VStack(alignment: .leading, spacing: 10) {
                    Text("My Amazing App")
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(nil)
                    Text("It has some great things")
                        .foregroundColor(Color.gray)
                    HStack() {
                        Image(systemName: "icloud.and.arrow.down")
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                    
            }
            Divider()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<10) { index in
                        CircleView(label: "flame")
                    }
                }.padding()
            }.frame(height: 100)
            Divider()
            Spacer()
        }
        .padding()
    }
}

struct CircleView: View {
    @State var label: String
    
    var body: some View {
        ZStack {
            Image(systemName: label)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75, alignment: .center)
                
        }
    }
}

struct AppStoreView_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreView()
    }
}
