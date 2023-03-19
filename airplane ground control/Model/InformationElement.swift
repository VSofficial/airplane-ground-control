//
//  Models.swift
//  Bhandara App
//
//  Created by Varun Sharma on 20/11/22.
//

import Foundation
import SwiftyJSON

struct InformationElement {
    var id: String = ""
    var title:String = ""
    var distance: String = ""
    
    init() {
        
    }
    
    init(swiftyJSON:JSON) {
        id = swiftyJSON["id"].stringValue
        title = swiftyJSON["title"].stringValue
        distance = swiftyJSON["distance"].stringValue
        
        
    }
    
}
