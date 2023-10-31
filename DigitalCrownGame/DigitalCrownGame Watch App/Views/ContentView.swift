//
//  ContentView.swift
//  DigitalCrownGame Watch App
//
//  Created by Sarah Clark on 10/30/23.
//

import SpriteKit
import SwiftUI

struct ContentView: View {
    @State private var crownPosition = 0.0

    var body: some View {
        GeometryReader { reader in
            SpriteView(scene: GameScene(size: reader.size, crownPosition: $crownPosition))
                .focusable()
                .digitalCrownRotation ($crownPosition)
        }
    }
}

#Preview {
    ContentView()
}
