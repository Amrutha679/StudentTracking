//
//  StudentData.swift
//  StudentTracking
//
//  Created by amrutha on 08/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import Foundation
class StudentData {
    
    var name:String?
    var address:String?
    
    init() {
    }
    
    init(name:String?,address:String?) {
        
        self.name = name
        self.address = address
    }
}
