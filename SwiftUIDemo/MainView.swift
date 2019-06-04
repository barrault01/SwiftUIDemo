//
//  MainView.swift
//  SwiftUIDemo
//
//  Created by Antoine Barrault on 04/06/19.
//  Copyright © 2019 Antoine Barrault. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    init(referenceDate: Date = Date.rwc2019()) {
        self.referenceDate = referenceDate
    }
    
    let referenceDate: Date
    var body: some View {
        VStack {
            HStack {
                Text("What's time until: ")
                    .font(.callout)
                    .color(.yellow)
                Text("RWC 2019?")
                    .bold()
                    .color(.pink)
            }
        CountDownView(referenceDate: referenceDate)
        }
    }

}



#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        return MainView()
            .previewDevice("iPhone X")
            .preferredColorScheme(.dark)
    }
}
#endif
