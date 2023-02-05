//
//  ContentView.swift
//  buttons
//
//  Created by emre on 6.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          Button("Delete selection") {
              print("Now deleting…")
          }
          .padding()
          VStack {
              Button("Button 1") { }
                  .buttonStyle(.bordered)
              Button("Button 2", role: .destructive) { }
                  .buttonStyle(.bordered)
              Button("Button 3") { }
                  .buttonStyle(.borderedProminent)
              Button("Button 4", role: .destructive) { }
                  .buttonStyle(.borderedProminent)
          }
          Button {
              print("Button was tapped")
          } label: {
              Text("Tap me!")
                  .padding()
                  .foregroundColor(.white)
                  .background(.red)
          }.padding()

          Button {
              print("Edit button was tapped")
          } label: {
              Label("Edit", systemImage: "pencil")
          }.padding()
          Button {
              print("Edit button was tapped")
          } label: {
              Image(systemName: "pencil")
          }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
