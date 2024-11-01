//
//  ContentView.swift
//  CitySights App
//
//  Created by Domenico Montalto on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    var service = DataService()
    
    var body: some View {
        HStack {
            
            TextField("What are you looking for?", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                //TODO: Implement query
            } label: {
                Text("Go")
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                    .background(.blue)
                    .foregroundStyle(Color(.white))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
        .padding()
        .task {
            
            await service.businessSearch()
        }
    }
}

#Preview {
    ContentView()
}
