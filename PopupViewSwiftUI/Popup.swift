//
//  Popup.swift
//  PopupViewSwiftUI
//
//  Created by Masataka Nakagawa on 2019/10/23.
//  Copyright © 2019 Masataka Nakagawa. All rights reserved.
//

import SwiftUI

extension View {

    public func popup<Content: View>(isPresented: Binding<Bool>, animation: Animation?, content: () -> Content) -> some View {
      return ZStack {
        self
        Color(red: 0, green: 0, blue: 0).opacity(isPresented.wrappedValue ? 0.5 : 0)
            .onTapGesture {
                isPresented.wrappedValue.toggle()
        }
        content()
            .opacity(isPresented.wrappedValue ? 1 : 0)
            .scaleEffect(isPresented.wrappedValue ? 1 : 0)
            .animation(animation != nil ? animation : .spring())
      }
    }
}
