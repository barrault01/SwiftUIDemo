//
//  CountDownWithTimer.swift
//  SwiftUIDemo
//
//  Created by Antoine Barrault on 04/06/19.
//  Copyright © 2019 Antoine Barrault. All rights reserved.
//

import SwiftUI

struct CountDownView : View {
    @State var nowDate: Date = Date()
    let referenceDate: Date
    let calendar = Calendar(identifier: .gregorian)

    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }

    var body: some View {
        Text(countDownString(from: referenceDate, until: nowDate))
            .font(.largeTitle)
            .onAppear(perform: {
                let _ = self.timer
            })
    }
    
    func countDownString(from date: Date, until nowDate: Date) -> String {
        let components = calendar.dateComponents([.day, .hour, .minute, .second],from: nowDate,
                                                 to: date)
        return String(format: "%02dd:%02dh:%02dm:%02ds",
                      components.day ?? 00,
                      components.hour ?? 00,
                      components.minute ?? 00,
                      components.second ?? 00)
    }

}

#if DEBUG
struct CountDownView_Previews : PreviewProvider {
    static var previews: some View {
        CountDownView(referenceDate: Date.rwc2019())
    }
}
#endif
