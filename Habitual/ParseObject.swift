//
//  ParseObject.swift
//  Ignite
//
//  Created by Josh Wright on 11/18/15.
//  Copyright © 2015 Josh Wright. All rights reserved.
//

import UIKit
import Parse

class ParseObject: NSObject {
    var parseObject: PFObject?
    
    init(parseObject: PFObject?) {
        self.parseObject = parseObject
    }
}