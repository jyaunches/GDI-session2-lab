//
//  Budget.swift
//  GDI-session2
//
//  Created by julie.yaunches on 3/8/16.
//  Copyright © 2016 julie.yaunches. All rights reserved.
//

import Foundation

import Foundation

enum BudgetType {
    case OneOff, Recurring
}

struct BudgetEntry {
    var amountSpent: Float
    var name: String
}

class Budget: NSObject {
    var budgetType: BudgetType = BudgetType.OneOff
    var entries: [BudgetEntry] = []
    
    init(budgetType: BudgetType){
        super.init()
        self.budgetType = budgetType
    }
}