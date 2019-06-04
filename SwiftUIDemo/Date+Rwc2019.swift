//
//  Date+Rwc2019.swift
//  SwiftUIDemo
//
//  Created by Antoine Barrault on 04/06/19.
//  Copyright © 2019 Antoine Barrault. All rights reserved.
//

import Foundation

extension Date {

    static func rwc2019() -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy HH:mm Z"
        return formatter.date(from: "20-09-2019 19:45 +09:00") ?? Date()
    }

}
