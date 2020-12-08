//
//  StudentListViewModel.swift
//  StudentTracking
//
//  Created by amrutha on 08/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import Foundation

class StudentListViewModel {
    
    var reloadStudentList = {() -> () in }
    var arrayOfStudent: [StudentData]? = [] {
        didSet{
            reloadStudentList()
        }
    }
    func addStudentData(name:String?,address:String?){
        arrayOfStudent?.append(StudentData(name: name, address: address))
    }
}
