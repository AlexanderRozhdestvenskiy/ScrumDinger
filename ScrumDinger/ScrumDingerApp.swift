//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Alexander Rozhdestvenskiy on 24.07.2021.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.data)
            }
        }
    }
}
