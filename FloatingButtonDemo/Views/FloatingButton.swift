//
//  FloatingButton.swift
//  FloatingButtonDemo
//
//  Created by Nafisa Rahman on 7/27/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import SwiftUI

struct FloatingButton : View {
    @State private var showAlert = false
    
    var body: some View {
        Button(action: {
            self.showAlert = true
            
        }){
            Image(systemName: "plus")
                .imageScale(.large)
            
            Text("Add")
                .font(.headline)
                .foregroundColor(Color.black)
            }
            .presentation($showAlert) {
                Alert(title: Text("Alert"), message: Text("You tapped the floating button"), dismissButton: .default(Text("Yeah")))
            }
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.yellow)
            .foregroundColor(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.black , radius: 5)
    }
}

#if DEBUG
struct FloatingButton_Previews : PreviewProvider {
    static var previews: some View {
        FloatingButton()
    }
}
#endif
