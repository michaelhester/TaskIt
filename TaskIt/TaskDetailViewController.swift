//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Michael on 5/11/15.
//  Copyright (c) 2015 MichaelHester. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!
    
    var mainVC: ViewController!

    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var subtaskTextField: UITextField!
    
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTextField.text = self.detailTaskModel.task
        self.subtaskTextField.text = self.detailTaskModel.subTask
        self.dueDatePicker.date = self.detailTaskModel.date
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        
        var task = TaskModel(task: taskTextField.text, subTask: subtaskTextField.text, date: dueDatePicker.date, completed: false)
        
        mainVC.baseArray[0][mainVC.tableView.indexPathForSelectedRow()!.row] = task
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    

}
