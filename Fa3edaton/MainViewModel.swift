//
//  MainViewModel.swift
//  Fa3edaton
//
//  Created by Mahmoud Adam on 02.02.20.
//  Copyright © 2020 lognlabs. All rights reserved.
//

import UIKit

class MainViewModel: NSObject {
    private var currentNumberOfDays: Int
    
    private let serialQueue = DispatchQueue(label: "MainViewModel.counterQueue")
    private let numberOfDaysKeys = "NumberOfDays"
    
    
    override init() {
        self.currentNumberOfDays = UserDefaults.standard.integer(forKey: self.numberOfDaysKeys)
    }
    
    func getCurrentDays() -> Int {
        return currentNumberOfDays
    }
    
    func incrementDays() {
        serialQueue.sync { [weak self] in
            self?.currentNumberOfDays += 1
            self?.saveCurrentDays()
        }
    }
    
    func decrementDays() {
        guard self.currentNumberOfDays > 0 else { return }
        serialQueue.sync { [weak self] in
            self?.currentNumberOfDays -= 1
            self?.saveCurrentDays()
        }
    }
    
    func saveCurrentDays() {
        UserDefaults.standard.set(self.currentNumberOfDays, forKey: self.numberOfDaysKeys)
        UserDefaults.standard.synchronize()
    }
}
