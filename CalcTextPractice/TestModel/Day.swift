//
//  Day.swift
//  CalcTextPractice
//
//  Created by 坂本龍哉 on 2021/10/20.
//

import Foundation

protocol DateProtocol {
    func now() -> Date
}

final class DateDefault: DateProtocol {
    func now() -> Date {
        return Date()
    }
}

final class CalenderUtil {
    let dateProtocol: DateProtocol
    init(dateProtocol: DateProtocol = DateDefault()) {
        self.dateProtocol = dateProtocol
    }
    
    func isHoliday() -> Bool {
        let now = dateProtocol.now()
        let calender: Calendar = .current
        let weekday = calender.component(.weekday, from: now)
        return weekday == 1 || weekday == 7
    }
}

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
