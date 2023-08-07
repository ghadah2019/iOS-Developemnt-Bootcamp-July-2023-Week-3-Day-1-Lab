//
//  SwitchViewController.swift
//  lab1week3
//
//  Created by Ghada Al on 20/01/1445 AH.
//

import Foundation
import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var `switch`: UISwitch!
    
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var textFieldView: UITextField!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        textFieldView.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
        `switch`.addTarget(self, action: #selector(switchValueChanged), for: .valueChanged)
        
    }
    
    private func setupViews() {
        
        textFieldView.borderStyle = .roundedRect
    }
    
    @objc private func textFieldEditingChanged(_ sender: UITextField) {
           let text = sender.text ?? ""
        switchLabel.text = text
       }

    @objc private func switchValueChanged(_ sender: UISwitch) {
        textFieldView.isEnabled = sender.isOn

            if sender.isOn {
                counter += 1
                switchLabel.text = "\(counter)"
            } else {
                textFieldView.text = ""
                switchLabel.text = ""
            }
        }

}

