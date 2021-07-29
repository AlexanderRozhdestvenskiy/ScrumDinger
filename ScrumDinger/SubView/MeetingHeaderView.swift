//
//  MeetingHeaderView.swift
//  ScrumDinger
//
//  Created by Alexander Rozhdestvenskiy on 29.07.2021.
//

import SwiftUI

struct MeetingHeaderView: View {
    
    let scrumColor: Color
    
    let secondElapset: Int
    
    let secondRemaining: Int
    
    private var progress: Double {
        guard secondRemaining > 0 else {
            return 1
        }
        let totalSecond = Double(secondElapset + secondRemaining)
        return Double(secondElapset) / totalSecond
    }
    
    private var minutesRemainind: Int {
        secondRemaining / 60
    }
    
    private var minutesRemainingMetric: String {
        minutesRemainind == 1 ? "minute" : "minutes"
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            HStack {
                VStack(alignment: .leading) {
                    Text("Second Elapset")
                        .font(.caption)
                    Label("\(secondElapset)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Remaining")
                        .font(.caption)
                    HStack {
                        Text("\(secondRemaining)")
                        Image(systemName: "hourglass.tophalf.fill")
                    }
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text("Time Remaning"))
        .accessibilityValue(Text("\(minutesRemainind) \(minutesRemainingMetric)"))
        .padding([.top, .horizontal])
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(scrumColor: DailyScrum.data[0].color, secondElapset: 60, secondRemaining: 180)
            .previewLayout(.sizeThatFits)
    }
}
