//
//  SliderViewController.swift
//  lab1week3
//
//  Created by Ghada Al on 20/01/1445 AH.
//

import Foundation
import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
                slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    }
    private func setupViews() {
           
           slider.minimumValue = 0
           slider.maximumValue = 100
        slider.value = 0
    }
    
    @objc private func sliderValueChanged(_ sender: UISlider) {
           let value = sender.value
           sliderLabel.text = "\(value)"
       }

}
