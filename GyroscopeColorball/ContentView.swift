//
//  ContentView.swift
//  GyroscopeColorball
//
//  Created by YongJun Han on 2022/12/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(Color.teal)
            .frame(width: 100, height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
