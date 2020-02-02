//
//  MainViewController.swift
//  Fa3edaton
//
//  Created by Mahmoud Adam on 02.02.20.
//  Copyright © 2020 lognlabs. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    private let numberOfDaysLabel = UILabel()
    private let countUpButton = UIButton()
    private let countDownButton = UIButton()
    
    private var viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        
        self.setupComponents()
        self.refreshView()
    }
    
    private func setupComponents() {
        numberOfDaysLabel.textColor = .white
        self.view.addSubview(numberOfDaysLabel)
        numberOfDaysLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().dividedBy(2)
        }
        
        self.view.addSubview(countUpButton)
        countUpButton.setTitle("+", for: .normal)
        countUpButton.layer.borderColor = UIColor.white.cgColor
        countUpButton.layer.borderWidth = 1
        countUpButton.addTarget(self, action: #selector(countUpTapped), for: .touchUpInside)
        countUpButton.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        
        
        self.view.addSubview(countDownButton)
        countDownButton.setTitle("-", for: .normal)
        countDownButton.layer.borderColor = UIColor.white.cgColor
        countDownButton.layer.borderWidth = 1
        countDownButton.addTarget(self, action: #selector(countDownTapped), for: .touchUpInside)
        countDownButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(countUpButton.snp_bottom).offset(15)
            make.size.equalTo(countUpButton)
        }
        
    }
    
    private func refreshView() {
        numberOfDaysLabel.text = "\(NSLocalizedString("Remainging days: ", comment: "")) \(viewModel.getCurrentDays())"
    }

    @objc private func countUpTapped() {
        viewModel.incrementDays()
        refreshView()
    }
    
    
    @objc private func countDownTapped() {
        viewModel.decrementDays()
        refreshView()
    }
}
