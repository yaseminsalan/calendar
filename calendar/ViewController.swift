//
//  ViewController.swift
//  calendar
//
//  Created by Yasemin salan on 16.01.2020.
//  Copyright © 2020 Yasemin salan. All rights reserved.
//

import UIKit

import FSCalendar


class ViewController: UIViewController{
    
  
    
     fileprivate weak var calendar: FSCalendar!    
    override func viewDidLoad() {
            super.viewDidLoad()
            // In loadView or viewDidLoad
            let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
        calendar.dataSource = self as! FSCalendarDataSource
        calendar.delegate = self as! FSCalendarDelegate
        calendar.register(FSCalendarCell.self, forCellReuseIdentifier: "CELL")
            view.addSubview(calendar)
        
        
      /*  calendar.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        calendar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calendar.heightAnchor.constraint(equalToConstant: 275).isActive = true
        calendar.widthAnchor.constraint(equalToConstant: view.frame.width - 40).isActive = true*/
            self.calendar = calendar
      
    }
   
    }
extension ViewController:FSCalendarDataSource,FSCalendarDelegate{
   /* func calendar(_ calendar: FSCalendar, titleFor date: Date) -> String? {
        return "maxcodes.io"
    }
    func calendar(_ calendar: FSCalendar, subtitleFor date: Date) -> String? {
        return "subscribe"
    }*/
  /*  func calendar(_ calendar:FSCalendar, imageFor date:Date)->UIImage?{
        return UIImage(named: "doga")
    }*/

    func calendar(_ calendar:FSCalendar,cellFor date:Date, at position:FSCalendarMonthPosition) -> FSCalendarCell{
        let cell = calendar.dequeueReusableCell(withIdentifier: "CELL", for: date, at: position)
      //  cell.imageView.contentMode = .scaleAspectFit    
        return cell
    }
}

    
