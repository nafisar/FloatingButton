//
//  ContentView.swift
//  FloatingButtonDemo
//
//  Created by Nafisa Rahman on 7/27/19.
//  Copyright © 2019 com.nafisa. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            NavigationView {
                
                VStack {
                    HStack {
                        Spacer()
                    }
                    Spacer()
                    }
                    .background(Color(red: 100 / 255, green: 200 / 255, blue: 200 / 255))
                    .edgesIgnoringSafeArea(.bottom)
                    .navigationBarTitle(Text("Floating Button Demo"), displayMode: .large)
                
            }
            
            // floating button
            FloatingButton()
                .offset(x: -40, y: -30)
                .padding(.bottom, 5)
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
