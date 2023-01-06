//
//  RMDDApp.swift
//  RMDD
//
//  Created by Maartz on 06/01/2023.
//

import SwiftUI

@main
struct RMDDApp: App {
    let derivedDataPath = "\(NSHomeDirectory())/Library/Developer/Xcode/DerivedData"

    @State var name: String = "RMDD"

    var body: some Scene {
        MenuBarExtra(name, systemImage: "toilet.fill") {
            Button("Clean derived data") {
                try? FileManager.default.removeItem(atPath: derivedDataPath)
            }
            .keyboardShortcut("d")

            Divider()
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
}
