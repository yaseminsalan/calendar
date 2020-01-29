//
//  DenemeViewController.swift
//  calendar
//
//  Created by Yasemin salan on 19.01.2020.
//  Copyright © 2020 Yasemin salan. All rights reserved.
//

import UIKit
import JKCalendar

class DenemeViewController: UIViewController {

    @IBOutlet weak var calendar: JKCalendar!
    var selectDay: JKDay = JKDay(date: Date())
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
               calendar.dataSource = self
               
               calendar.textColor = UIColor(white: 0.25, alpha: 1)
               calendar.backgroundColor = UIColor.white
               
               calendar.isNearbyMonthNameDisplayed = false
               calendar.isScrollEnabled = false
               // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
    }
    

     let markColor = UIColor(red: 40/255, green: 178/255, blue: 253/255, alpha: 1)
        var selectDays: [JKDay]?{
            didSet{
                if let days = selectDays,
                    days.count > 0{
                    let formatter = DateFormatter()
                    formatter.dateStyle = .medium
                    formatter.timeStyle = .none
                    
                    let firstDay = days.first!
                    let firstDate = JKCalendar.calendar.date(from: DateComponents(year: 2020,month: 1,day: 2))!
                    if days.count == 1{
                      //  dateLabel.text = formatter.string(from: firstDate)
                    }else{
                        let lastDay = days.last!
                        let lastDate = JKCalendar.calendar.date(from: DateComponents(year: lastDay.year,
                                                                                     month: lastDay.month,
                                                                                     day: lastDay.day))!
                        //dateLabel.text = formatter.string(from: firstDate) + "-" + formatter.string(from: lastDate)
                    }
                }
            }
        }

    }

    extension DenemeViewController: JKCalendarDelegate{
        
        func calendar(_ calendar: JKCalendar, didTouch day: JKDay) {
           
           // selectDays = [day]
            calendar.reloadData()
        }
        
        func calendar(_ calendar: JKCalendar, didPan days: [JKDay]) {
           // selectDays = days
            calendar.reloadData()
        }
       /*  func calendar(_ calendar: JKCalendar, marksWith month: JKMonth) -> [JKCalendarMark]? {
         // let deneme = [today]
           let today = JKDay(year: 2020, month: 1, day: 2)!
               let todayy = JKDay(year: 2020, month: 1, day: 3)!
              let deneme = [today,todayy]
           // let todayy = JKDay(date: Date(2020-1-2))
           
            if today == month{
               
                for i in 0..<2{
                    
                    
                }
                return [JKCalendarMark(type: .dot, day: deneme[1], color: UIColor.red)]
                
            }else{
                return nil
            }
              
            }*/
        
        
        
        func calendar(_ calendar: JKCalendar, marksWith month: JKMonth) -> [JKCalendarMark]? {
            
            let firstMarkDay: JKDay = JKDay(year: 2020, month: 1, day: 9)!
            let secondMarkDay: JKDay = JKDay(year: 2020, month: 1, day: 20)!
            let secondMarkDayy: JKDay = JKDay(year: 2020, month: 1, day: 15)!
            let today = JKDay(year: 2020, month: 1, day: 2)!
            let todayy = JKDay(year: 2020, month: 1, day: 3)!
                         let deneme = [today,todayy]
            var marks: [JKCalendarMark] = []
         
            if selectDay == month{
                marks.append(JKCalendarMark(type: .circle,
                                            day: selectDay,
                                            color: markColor))
            }

            if firstMarkDay == month{
                marks.append(JKCalendarMark(type: .dot,
                                            day: firstMarkDay,
                                            color: markColor))
            }
            for i in 0..<2{
            if secondMarkDay == month{
                marks.append(JKCalendarMark(type: .dot,
                                            day: deneme[i],
                                            color: markColor))
            }   }
            if secondMarkDayy == month{
                          marks.append(JKCalendarMark(type: .dot,
                                                      day: secondMarkDayy,
                                                      color: markColor))
            }
           print("deneme")
         
            return marks
        }
          
          
            
            
        
        
    }

    extension DenemeViewController: JKCalendarDataSource{
        
      /*  func calendar(_ calendar: JKCalendar, continuousMarksWith month: JKMonth) -> [JKCalendarContinuousMark]?{
            let markStartDay = JKDay(year: 2020, month: 1, day: 3)!
              let markEndDay = JKDay(year: 2020, month: 1, day: 12)!
                 if markStartDay == month || markEndDay == month{
                     return [JKCalendarContinuousMark(type: .dot, start: markStartDay, end: markEndDay, color: UIColor.red)]
                 }else{
                     return nil
                 }    }*/

}
