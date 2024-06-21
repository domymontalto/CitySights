//
//  ContentView.swift
//  CitySights App
//
//  Created by Domenico Montalto on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    
    var body: some View {
        HStack {
            
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                //TODO: Implement query
            } label: {
                Text("Go")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
