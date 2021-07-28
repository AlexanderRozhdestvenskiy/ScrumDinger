//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Alexander Rozhdestvenskiy on 25.07.2021.
//

import SwiftUI

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.color = color
    }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Michael"], lengthInMinutes: 10, color: .yellow),
            DailyScrum(title: "App Dev", attendees: ["Katie", "Seed", "Paul"], lengthInMinutes: 5, color: .green),
            DailyScrum(title: "Web Dev", attendees: ["Chella", "John", "Ivan", "Leonid"], lengthInMinutes: 1, color: .orange),
            DailyScrum(title: "DevOps", attendees: ["Bob"], lengthInMinutes: 7, color: .red)
        ]
    }
}

extension DailyScrum {
    struct Data {
        var title: String = ""
        var attendees: [String] = []
        var lengthInMinutes: Double = 5.0
        var color: Color = .red
    }
    
    var data: Data {
        return Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
        lengthInMinutes = Int(data.lengthInMinutes)
        color = data.color
    }
}
