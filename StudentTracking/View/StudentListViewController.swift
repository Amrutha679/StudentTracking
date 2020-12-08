//
//  ViewController.swift
//  StudentTracking
//
//  Created by amrutha on 08/12/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class StudentListViewController: UIViewController {
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    let studentViewModel = StudentListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSetup()
        studentViewModel.reloadStudentList = {[weak self] () in self?.tableView.reloadData()}
    }
    
    @IBAction func buttonHandler(_ sender: UIButton) {
        
        if (textFieldName.text?.count ?? 0 > 0)&&(textFieldAddress.text?.count ?? 0 > 0)
        {
            studentViewModel.addStudentData(name: textFieldName.text, address: textFieldAddress.text)
            textFieldName.text = ""
            textFieldAddress.text = ""
            self.view.endEditing(true)
        }
        
    }
}
extension StudentListViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableViewSetup() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName:String(describing: StudentTableViewCell.self),bundle:nil), forCellReuseIdentifier: String(describing: StudentTableViewCell.self))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentViewModel.arrayOfStudent?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : StudentTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing: StudentTableViewCell.self)) as! StudentTableViewCell
        cell.studentObj = studentViewModel.arrayOfStudent?[indexPath.row]
        return cell
        
    }
}
