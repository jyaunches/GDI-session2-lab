//
//  ViewController.swift
//  GDI-session2
//
//  Created by julie.yaunches on 3/8/16.
//  Copyright © 2016 julie.yaunches. All rights reserved.
//

import UIKit

class CreateBudgetViewController: UIViewController {
    
    @IBOutlet weak var endTextField: UITextField!
    @IBOutlet weak var startTextField: UITextField!
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var budgetNameField: UITextField!
    
    var datePicker: UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datePicker = UIDatePicker()
        self.datePicker!.datePickerMode = UIDatePickerMode.Date
        
        self.endTextField.inputView = self.datePicker
        self.startTextField.inputView = self.datePicker
        
        self.datePicker!.addTarget(self, action: Selector("handleDatePicker:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    @IBAction func saveTapped(sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: self.dynamicType))
        if let budgetDetailsViewController = storyboard.instantiateViewControllerWithIdentifier("BudgetDetailsViewController") as? BudgetDetailsViewController {
            self.navigationController?.pushViewController(budgetDetailsViewController, animated: true)
//            self.navigationContpresentViewController(budgetDetailsViewController, animated: true, completion: nil)
        }
        
    }
    func handleDatePicker(sender: UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        if self.startTextField.isFirstResponder() {
            self.startTextField.text = dateFormatter.stringFromDate(sender.date)
        } else if self.endTextField.isFirstResponder() {
            self.endTextField.text = dateFormatter.stringFromDate(sender.date)
        }
    }

}


