//
//  SecondViewController.swift
//  lab1week3
//
//  Created by Ghada Al on 19/01/1445 AH.
//

import Foundation
import UIKit


class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var UserInput: UITextField!
    

    @IBOutlet weak var DisplayUserInput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserInput.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
  
        guard let currentText = textField.text,
              let textRange = Range(range, in: currentText) else {
            return true
        }
        let updatedText = currentText.replacingCharacters(in: textRange, with: string)
        
        
        DisplayUserInput.text = updatedText
        
        return true
    }
    
    


}
