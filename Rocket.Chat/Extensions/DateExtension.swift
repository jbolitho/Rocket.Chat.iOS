//
//  DateExtension.swift
//  Rocket.Chat
//
//  Created by Rafael K. Streit on 7/11/16.
//  Copyright © 2016 Rocket.Chat. All rights reserved.
//

import Foundation

extension Date {

    public static func dateFromInterval(_ interval: Double) -> Date? {
        return Date(timeIntervalSince1970: interval / 1000)
    }

    public static func intervalFromDate(_ date: Date) -> Double {
        return date.timeIntervalSince1970 * 1000
    }

    var weekday: String {
        return self.formatted("EEE")
    }

    var day: String {
        return self.formatted("dd")
    }

    var month: String {
        return self.formatted("MM")
    }

    var monthString: String {
        return self.formatted("MMMM")
    }

    var year: String {
        return self.formatted("YYYY")
    }

    func formatted(_ format: String = "dd/MM/yyyy HH:mm:ss ZZZ") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

    var dayOfWeek: Int {
        let calendar = NSCalendar.current
        let comp: DateComponents = (calendar as NSCalendar).components(.weekday, from: self)
        return comp.weekday ?? -1
    }

}
