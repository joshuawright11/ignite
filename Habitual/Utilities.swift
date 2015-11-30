//
//  Utilities.swift
//  Habitual
//
//  Created by Josh Wright on 6/12/15.
//  Copyright (c) 2015 Josh Wright. All rights reserved.
//

import Foundation
import UIKit
import TSMessages

public class Utilities {
    
    public static func alertError(string:String){
        TSMessage.showNotificationWithTitle("Uh oh", subtitle:string, type: .Error)
    }
    
    public static func alertWarning(string:String){
        TSMessage.showNotificationWithTitle("Hey!", subtitle:string, type: .Warning)
    }
    
    public static func alertSuccess(string:String){
        TSMessage.showNotificationWithTitle("Success!", subtitle:string, type: .Success)
    }
    
    public static func dateFromString(string: String) -> NSDate {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.dateFormat = "YYYY-MM-DD:hh:mm:ss:ZZZZ"
        
        let date: NSDate? = dateFormatter.dateFromString(string);
        
        if let date = date {
            return date
        }else{
            return NSDate()
        }
    }
    
    public static func stringFromDate(date: NSDate) -> String {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.dateFormat = "YYYY-MM-DD:hh:mm:ss:ZZZZ"
        
        let string: String = dateFormatter.stringFromDate(date);
        
        return string
    }
    
    public static func monthDayStringFromDate(date: NSDate) -> String {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .LongStyle
        
        return dateFormatter.stringFromDate(date).componentsSeparatedByString(",")[0]
    }
    
    public static func registerForNotification(object: AnyObject, selector:Selector, name:String){
        
        NSNotificationCenter.defaultCenter().addObserver(object, selector: selector, name: name, object: nil)
    }
    
    public static func postNotification(name: String) {
        
        NSNotificationCenter.defaultCenter().postNotificationName(name, object: nil)
    }
    
    public static func writeUserDefaults(key: String, bool: Bool) {
        let ud = NSUserDefaults.standardUserDefaults()
        ud.setBool(bool, forKey: key)
    }
    
    public static func readUserDefaults(key: String) -> Bool {
        let ud = NSUserDefaults.standardUserDefaults()
        
        if let bool = ud.objectForKey(key) {
            return bool as! Bool
        }else{
            return false
        }
    }
}
