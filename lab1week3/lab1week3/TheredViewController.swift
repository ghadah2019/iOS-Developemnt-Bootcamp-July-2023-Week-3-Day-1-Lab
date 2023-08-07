//
//  TheredViewController.swift
//  lab1week3
//
//  Created by Ghada Al on 19/01/1445 AH.
//

import Foundation
import UIKit

class TheredViewController: UIViewController {

    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var stepperLabel: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperLabel.stepValue = 1.0
   
        setupViews()
        stepperLabel.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
    }
    
    private func setupViews() {
           
        stepperLabel.minimumValue = 0
        stepperLabel.maximumValue = 100
        stepperLabel.stepValue = 1
        stepperLabel.value = 0
    }
    
    @objc func stepperValueChanged(_ sender: UIStepper){
        let value =  Int(sender.value)
        labelStepper.text = "\(value)"
    }
    
    
    

}
