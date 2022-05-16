//
//  LearningApp.swift
//  LearningApp
//
//  Created by Zoe Nelson on 5/16/22.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
