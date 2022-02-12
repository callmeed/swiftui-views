//
//  ContentView.swift
//  SwiftUIViewCollection
//
//  Created by Erik Dungan on 2/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false
    @State private var showingFullScreen = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                NavigationLink(destination: Text("Yet another view")) {
                    HStack(spacing: 10) {
                        Image(systemName: "gamecontroller.fill")
                            .renderingMode(.original)
                        Text("Load a text view into navigation")
                    }
                    
                }
                NavigationLink(destination: AppStoreView()) {
                    Text("A view that looks like the App Store detail page")
                }
                Button("Show a simple view as sheet") {
                    showingSheet.toggle()
                }
                    .sheet(isPresented: $showingSheet) {
                        SimpleViewWithImage()
                    }
                Button("Show a simple view as full screen cover") {
                    showingFullScreen.toggle()
                }
                    .fullScreenCover(isPresented: $showingFullScreen, content: SimpleViewWithImage.init)
                NavigationLink(destination: Text("Say Cheese")) {
                    Text("Access camera and image picker")
                }
                NavigationLink(destination: WebView(url: URL(string: "https://www.shiny.sale/")!)) {
                    Text("Open a URL in a web view")
                }
            }
                .navigationTitle("Navigation Title")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
