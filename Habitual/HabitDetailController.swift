//
//  HabitDetailController.swift
//  Habitual
//
//  Created by Josh Wright on 7/13/15.
//  Copyright (c) 2015 Josh Wright. All rights reserved.
//

import UIKit

class HabitDetailController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var repeatLabel: UILabel!
    @IBOutlet weak var daysInARowLabel: UILabel!
    
    var habit:Habit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let habit = habit {
            nameTextField.text = habit.name
            
            self.navigationItem.title = habit.name
        }else{
            self.navigationItem.title = "New Habit"

            let button = UIBarButtonItem(title: "Done", style: .Plain, target: self, action: "done:")

            self.navigationItem.rightBarButtonItem = button

        }
    }
    
    func done(sender: UIBarButtonItem){
        
        AuthManager.addHabitForCurrentUser(self.nameTextField.text, repeat: Repeat.Weekly.rawValue)
        NSNotificationCenter.defaultCenter().postNotificationName(kNotificationIdentifierRefreshHome, object: nil)
        navigationController?.popToRootViewControllerAnimated(true)
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let repeats = ["Daily", "Monthly", "Weekly"]
        
        if indexPath.row == 1 {
            let index = find(repeats, repeatLabel.text!)! % 3
            self.repeatLabel.text = repeats[Int(index)]
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
    }
}
