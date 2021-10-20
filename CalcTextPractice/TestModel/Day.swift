//
//  Day.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/20.
//

import Foundation

final class Day {
    
    func isHolidayBad() -> Bool {
        let now = Date()
        
        let calender: Calendar = .current
        let weekday = calender.component(.weekday, from: now)
        
        return weekday == 1 || weekday == 7
    }
    
    func isHoliday(date: Date = Date()) -> Bool {
        let calender: Calendar = .current
        let weekday = calender.component(.weekday, from: date)
        return weekday == 1 || weekday == 7
    }
    
}
