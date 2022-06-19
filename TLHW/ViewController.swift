//
//  ViewController.swift
//  TLHW
//
//  Created by Dmitry on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Color {
        case red,
             orange,
             green
    }
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var orangeColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private let colorDisabled: CGFloat = 0.25
    private let colorEnabled: CGFloat = 1.0
    private var caseSwitcher = Color.red
    

    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.alpha = colorDisabled
        orangeColor.alpha = colorDisabled
        greenColor.alpha = colorDisabled
    }

    @IBAction func isTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch caseSwitcher {
        case .red:
            greenColor.alpha = colorDisabled
            redColor.alpha = colorEnabled
            caseSwitcher = .orange
            
        case .orange:
            redColor.alpha = colorDisabled
            orangeColor.alpha = colorEnabled
            caseSwitcher = .green
            
        case .green:
            orangeColor.alpha = colorDisabled
            greenColor.alpha = colorEnabled
            caseSwitcher = .red
            
        }
    }
    
}

