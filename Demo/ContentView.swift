//
//  ContentView.swift
//  Demo
//
//  Created by Masataka Nakagawa on 2019/10/23.
//  Copyright © 2019 Masataka Nakagawa. All rights reserved.
//

import SwiftUI
import PopupViewSwiftUI

struct ContentView: View {

    @State var isPresented: Bool = false

    var body: some View {
        VStack {
            Text("Popup View")
                .padding()
            Button("Show Popup") {
                self.isPresented.toggle()
            }
        }
        .popup(isPresented: $isPresented, animation: nil, content: {
            PopupView(isPresented: self.$isPresented)
        })
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PopupView: View {

    @Binding var isPresented: Bool

    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
    }

    var body: some View {
        VStack {
            Text("PopupView")
                .padding()
            Button("Close") {
                self.isPresented.toggle()
            }
            .padding()
        }
        .frame(width: 300, height: 300)
        .background(Color.orange)
        .cornerRadius(10)
        .padding()
    }
}
